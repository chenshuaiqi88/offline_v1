use bigdata_realtime_v1;

DROP TABLE IF EXISTS dim_promotion_pos_full;
CREATE EXTERNAL TABLE dim_promotion_pos_full
(
    `id`                 STRING COMMENT '营销坑位ID',
    `pos_location`     STRING COMMENT '营销坑位位置',
    `pos_type`          STRING COMMENT '营销坑位类型 ',
    `promotion_type`   STRING COMMENT '营销类型',
    `create_time`       STRING COMMENT '创建时间',
    `operate_time`      STRING COMMENT '修改时间'
) COMMENT '营销坑位维度表'
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/dim_promotion_pos_full/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );


insert overwrite table dim_promotion_pos_full partition(ds='20250918')
select
    `id`,
    `pos_location`,
    `pos_type`,
    `promotion_type`,
    `create_time`,
    `operate_time`
from ods_promotion_pos
where ds='20250918';


select *
from dim_promotion_pos_full
where ds='20250918';