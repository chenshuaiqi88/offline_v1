create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_activity_info;
    create external table bigdata_realtime_v1.ods_activity_info(
        id String, activity_name String, activity_type String, activity_desc String, start_time String, end_time String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_activity_info/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_activity_rule;
    create external table bigdata_realtime_v1.ods_activity_rule(
        id String, activity_id String, activity_type String, condition_amount String, condition_num String, benefit_amount String, benefit_discount String, benefit_level String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_activity_rule/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_base_category1;
    create external table bigdata_realtime_v1.ods_base_category1(
        id String, name String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_base_category1/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_base_category2;
    create external table bigdata_realtime_v1.ods_base_category2(
        id String, name String, category1_id String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_base_category2/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_base_category3;
    create external table bigdata_realtime_v1.ods_base_category3(
        id String, name String, category2_id String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_base_category3/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_base_dic;
    create external table bigdata_realtime_v1.ods_base_dic(
        dic_code String, dic_name String, parent_code String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_base_dic/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_base_province;
    create external table bigdata_realtime_v1.ods_base_province(
        id String, name String, region_id String, area_code String, iso_code String, iso_3166_2 String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_base_province/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_base_region;
    create external table bigdata_realtime_v1.ods_base_region(
        id String, region_name String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_base_region/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_base_trademark;
    create external table bigdata_realtime_v1.ods_base_trademark(
        id String, tm_name String, logo_url String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_base_trademark/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_cart_info;
    create external table bigdata_realtime_v1.ods_cart_info(
        id String, user_id String, sku_id String, cart_price String, sku_num String, img_url String, sku_name String, is_checked String, create_time String, operate_time String, is_ordered String, order_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_cart_info/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_coupon_info;
    create external table bigdata_realtime_v1.ods_coupon_info(
        id String, coupon_name String, coupon_type String, condition_amount String, condition_num String, activity_id String, benefit_amount String, benefit_discount String, create_time String, range_type String, limit_num String, taken_count String, start_time String, end_time String, operate_time String, expire_time String, range_desc String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_coupon_info/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_sku_attr_value;
    create external table bigdata_realtime_v1.ods_sku_attr_value(
        id String, attr_id String, value_id String, sku_id String, attr_name String, value_name String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_sku_attr_value/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_sku_info;
    create external table bigdata_realtime_v1.ods_sku_info(
        id String, spu_id String, price String, sku_name String, sku_desc String, weight String, tm_id String, category3_id String, sku_default_img String, is_sale String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_sku_info/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_sku_sale_attr_value;
    create external table bigdata_realtime_v1.ods_sku_sale_attr_value(
        id String, sku_id String, spu_id String, sale_attr_value_id String, sale_attr_id String, sale_attr_name String, sale_attr_value_name String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_sku_sale_attr_value/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_spu_info;
    create external table bigdata_realtime_v1.ods_spu_info(
        id String, spu_name String, description String, category3_id String, tm_id String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_spu_info/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_promotion_pos;
    create external table bigdata_realtime_v1.ods_promotion_pos(
        id String, pos_location String, pos_type String, promotion_type String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_promotion_pos/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_promotion_refer;
    create external table bigdata_realtime_v1.ods_promotion_refer(
        id String, refer_name String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_promotion_refer/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_cart_info;
    create external table bigdata_realtime_v1.ods_cart_info(
        id String, user_id String, sku_id String, cart_price String, sku_num String, img_url String, sku_name String, is_checked String, create_time String, operate_time String, is_ordered String, order_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_cart_info/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_comment_info;
    create external table bigdata_realtime_v1.ods_comment_info(
        id String, user_id String, nick_name String, head_img String, sku_id String, spu_id String, order_id String, appraise String, comment_txt String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_comment_info/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_coupon_use;
    create external table bigdata_realtime_v1.ods_coupon_use(
        id String, coupon_id String, user_id String, order_id String, coupon_status String, get_time String, using_time String, used_time String, expire_time String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_coupon_use/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_favor_info;
    create external table bigdata_realtime_v1.ods_favor_info(
        id String, user_id String, sku_id String, spu_id String, is_cancel String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_favor_info/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_order_detail;
    create external table bigdata_realtime_v1.ods_order_detail(
        id String, order_id String, sku_id String, sku_name String, img_url String, order_price String, sku_num String, create_time String, split_total_amount String, split_activity_amount String, split_coupon_amount String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_order_detail/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_order_detail_activity;
    create external table bigdata_realtime_v1.ods_order_detail_activity(
        id String, order_id String, order_detail_id String, activity_id String, activity_rule_id String, sku_id String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_order_detail_activity/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_order_detail_coupon;
    create external table bigdata_realtime_v1.ods_order_detail_coupon(
        id String, order_id String, order_detail_id String, coupon_id String, coupon_use_id String, sku_id String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_order_detail_coupon/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_order_info;
    create external table bigdata_realtime_v1.ods_order_info(
        id String, consignee String, consignee_tel String, total_amount String, order_status String, user_id String, payment_way String, delivery_address String, order_comment String, out_trade_no String, trade_body String, create_time String, operate_time String, expire_time String, process_status String, tracking_no String, parent_order_id String, img_url String, province_id String, activity_reduce_amount String, coupon_reduce_amount String, original_total_amount String, feight_fee String, feight_fee_reduce String, refundable_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_order_info/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_order_refund_info;
    create external table bigdata_realtime_v1.ods_order_refund_info(
        id String, user_id String, order_id String, sku_id String, refund_type String, refund_num String, refund_amount String, refund_reason_type String, refund_reason_txt String, refund_status String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_order_refund_info/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_order_status_log;
    create external table bigdata_realtime_v1.ods_order_status_log(
        id String, order_id String, order_status String, create_time String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_order_status_log/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_payment_info;
    create external table bigdata_realtime_v1.ods_payment_info(
        id String, out_trade_no String, order_id String, user_id String, payment_type String, trade_no String, total_amount String, subject String, payment_status String, create_time String, callback_time String, callback_content String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_payment_info/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_refund_payment;
    create external table bigdata_realtime_v1.ods_refund_payment(
        id String, out_trade_no String, order_id String, sku_id String, payment_type String, trade_no String, total_amount String, subject String, refund_status String, create_time String, callback_time String, callback_content String, operate_time String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_refund_payment/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );create database if not exists bigdata_realtime_v1;

    use bigdata_realtime_v1;
    -- # mysql to hive ddl test
    CREATE DATABASE IF NOT EXISTS bigdata_realtime_v1
    COMMENT 'test-warehouse'
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/'
    WITH DBPROPERTIES (
        'creator' = 'csq',
                    'created_date' = '2025-09-16'
    );

    drop table bigdata_realtime_v1.ods_user_info;
    create external table bigdata_realtime_v1.ods_user_info(
        id String, login_name String, nick_name String, passwd String, name String, phone_num String, email String, head_img String, user_level String, birthday String, gender String, create_time String, operate_time String, status String
    )
    PARTITIONED BY (ds STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/ods_user_info/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );