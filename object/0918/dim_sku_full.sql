use bigdata_realtime_v1;

drop table bigdata_realtime_v1.dim_sku_full;
create external table bigdata_realtime_v1.dim_sku_full(
    `id`                   STRING COMMENT 'SKU_ID',
    `price`                DECIMAL(16, 2) COMMENT '商品价格',
    `sku_name`             STRING COMMENT '商品名称',
    `sku_desc`             STRING COMMENT '商品描述',
    `weight`               DECIMAL(16, 2) COMMENT '重量',
    `is_sale`              STRING COMMENT '是否在售',
    `spu_id`               STRING COMMENT 'SPU编号',
    `spu_name`             STRING COMMENT 'SPU名称',
    `category3_id`         STRING COMMENT '三级品类ID',
    `category3_name`       STRING COMMENT '三级品类名称',
    `category2_id`         STRING COMMENT '二级品类id',
    `category2_name`       STRING COMMENT '二级品类名称',
    `category1_id`         STRING COMMENT '一级品类ID',
    `category1_name`       STRING COMMENT '一级品类名称',
    `tm_id`                  STRING COMMENT '品牌ID',
    `tm_name`               STRING COMMENT '品牌名称',
    `sku_attr_values`      ARRAY<STRUCT<attr_id :STRING,
        value_id :STRING,
        attr_name :STRING,
        value_name:STRING>> COMMENT '平台属性',
    `sku_sale_attr_values` ARRAY<STRUCT<sale_attr_id :STRING,
        sale_attr_value_id :STRING,
        sale_attr_name :STRING,
        sale_attr_value_name:STRING>> COMMENT '销售属性',
    `create_time`          STRING COMMENT '创建时间'
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/dim_sku_full/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );


with sku_base_t as (
    select id,
       price,
       sku_name,
       sku_desc,
       weight,
       is_sale,
       spu_id,
       category3_id,
       tm_id,
       create_time,
       ds
    from bigdata_realtime_v1.ods_sku_info
    where ds = '20250918'-- ${bizdate}
),
     spu_base_t as (
         select id,
                spu_name
         from bigdata_realtime_v1.ods_spu_info
         where ds = '20250918' -- ${bizdata}
     ),
     c3_t as (
         select id   category3_id,
                name category3_name,
                category2_id
         from bigdata_realtime_v1.ods_base_category3
         where ds = '20250918'
     ),
     c2_t as (
         select id   category2_id,
                name category2_name,
                category1_id
         from bigdata_realtime_v1.ods_base_category2
         where ds = '20250918'
     ),
     c1_t as (
         select id   category1_id,
                name category1_name
         from bigdata_realtime_v1.ods_base_category1
         where ds = '20250918'
     ),
     tm_t as (
         select id,
                tm_name
         from bigdata_realtime_v1.ods_base_trademark
         where ds = '20250918'
     ),
     attr_t as (
         select sku_id,
                collect_set(
                    named_struct(
                        "attr_id",attr_id,
                        "value_id",value_id,
                        "attr_name",attr_name,
                        "value_name",value_name
                        )
                    )  attrs
         from bigdata_realtime_v1.ods_sku_attr_value
         where ds = '20250918'
         group by sku_id
     ),
     sale_attr_t as (
         select sku_id,
                collect_set(named_struct(
                    "sale_attr_id",sale_attr_id,
                    "sale_attr_value_id",sale_attr_value_id,
                    "sale_attr_name",sale_attr_name,
                    "sale_attr_value_name",sale_attr_value_name
                    )) sale_attrs
         from bigdata_realtime_v1.ods_sku_sale_attr_value
         where ds = '20250918'
         group by sku_id
     )
insert overwrite table dim_sku_full partition(ds='20250918')
select
    sku_base_t.id,
    sku_base_t.price,
    sku_base_t.sku_name,
    sku_base_t.sku_desc,
    sku_base_t.weight,
    sku_base_t.is_sale,
    sku_base_t.spu_id,
    spu_base_t.spu_name,
    sku_base_t.category3_id,
    c3_t.category3_name,
    c3_t.category2_id,
    c2_t.category2_name,
    c2_t.category1_id,
    c1_t.category1_name,
    sku_base_t.tm_id,
    tm_t.tm_name,
    attr_t.attrs,
    sale_attr_t.sale_attrs,
    sku_base_t.create_time
from sku_base_t
left join spu_base_t on sku_base_t.spu_id=spu_base_t.id
left join c3_t on sku_base_t.category3_id=c3_t.category3_id
left join c2_t on c3_t.category2_id=c2_t.category2_id
left join c1_t on c2_t.category1_id=c1_t.category1_id
left join tm_t on sku_base_t.tm_id=tm_t.id
left join attr_t on sku_base_t.id=attr_t.sku_id
left join sale_attr_t on sku_base_t.id=sale_attr_t.sku_id;


select *
from dim_sku_full
where ds = '20250918';