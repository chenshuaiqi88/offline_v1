use bigdata_realtime_v1;

DROP TABLE IF EXISTS dim_province_full;
CREATE EXTERNAL TABLE dim_province_full
(
    `id`              STRING COMMENT '省份ID',
    `province_name` STRING COMMENT '省份名称',
    `area_code`     STRING COMMENT '地区编码',
    `iso_code`      STRING COMMENT '旧版国际标准地区编码，供可视化使用',
    `iso_3166_2`    STRING COMMENT '新版国际标准地区编码，供可视化使用',
    `region_id`     STRING COMMENT '地区ID',
    `region_name`   STRING COMMENT '地区名称'
) COMMENT '地区维度表'
   PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/dim_province_full/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );


insert overwrite table dim_province_full partition(ds='20250918')
select
    province.id,
    province.name,
    province.area_code,
    province.iso_code,
    province.iso_3166_2,
    region_id,
    region_name
from
(
    select
        id,
        name,
        region_id,
        area_code,
        iso_code,
        iso_3166_2
    from ods_base_province
    where ds='20250918'
)province
left join
(
    select
        id,
        region_name
    from ods_base_region
    where ds='20250918'
)region
on province.region_id=region.id;



select *
from dim_province_full
where ds = '20250918';