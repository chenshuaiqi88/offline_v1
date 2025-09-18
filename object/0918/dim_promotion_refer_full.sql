use bigdata_realtime_v1;

DROP TABLE IF EXISTS dim_promotion_refer_full;
CREATE EXTERNAL TABLE dim_promotion_refer_full
(
    `id`                    STRING COMMENT '营销渠道ID',
    `refer_name`          STRING COMMENT '营销渠道名称',
    `create_time`         STRING COMMENT '创建时间',
    `operate_time`        STRING COMMENT '修改时间'
) COMMENT '营销渠道维度表'
  PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/dim_promotion_refer_full/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );


insert overwrite table dim_promotion_refer_full partition(ds='20250918')
select
    `id`,
    `refer_name`,
    `create_time`,
    `operate_time`
from ods_promotion_refer
where ds='20250918';



select *
from dim_promotion_refer_full
where ds = '20250918';