use bigdata_realtime_v1;

DROP TABLE IF EXISTS dim_user_zip;
CREATE EXTERNAL TABLE dim_user_zip
(
    `id`           STRING COMMENT '用户ID',
    `name`         STRING COMMENT '用户姓名',
    `phone_num`    STRING COMMENT '手机号码',
    `email`        STRING COMMENT '邮箱',
    `user_level`   STRING COMMENT '用户等级',
    `birthday`     STRING COMMENT '生日',
    `gender`       STRING COMMENT '性别',
    `create_time`  STRING COMMENT '创建时间',
    `operate_time` STRING COMMENT '操作时间',
    `start_date`   STRING COMMENT '开始日期',
    `end_date`     STRING COMMENT '结束日期'
) COMMENT '用户维度表'
    PARTITIONED BY (`ds` STRING)
    LOCATION 'hdfs://cdh01:8020/bigdata_warehouse/bigdata_realtime_v1/dim_user_zip/'
    TBLPROPERTIES (
        'orc.compress' = 'SNAPPY',
                         'external.table.purge' = 'true'
    );


insert overwrite table dim_user_zip partition (ds = '99991231')
select id,
       concat(substr(name, 1, 1), '*')                name,
       if(phone_num regexp '^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\\d{8}$',
          concat(substr(phone_num, 1, 3), '*'), null) phone_num,
       if(email regexp '^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$',
          concat('*@', split(email, '@')[1]), null)   email,
       user_level,
       birthday,
       gender,
       create_time,
       operate_time,
       '20250918'                                        start_date,
       '99991231'                                        end_date
from ods_user_info
where ds = '20250918';

select *
from dim_user_zip;

-- ② 每日装载
set hive.exec.dynamic.partition.mode=nonstrict;
insert overwrite table dim_user_zip partition (ds)
select id,
       name,
       phone_num,
       email,
       user_level,
       birthday,
       gender,
       create_time,
       operate_time,
       start_date,
       if(rn = 2, date_sub('20250918', 1), end_date)     end_date,
       if(rn = 1, '99991231', date_sub('20250918', 1)) dt
from (
         select id,
                name,
                phone_num,
                email,
                user_level,
                birthday,
                gender,
                create_time,
                operate_time,
                start_date,
                end_date,
                row_number() over (partition by id order by start_date desc) rn
         from (
                  select id,
                         name,
                         phone_num,
                         email,
                         user_level,
                         birthday,
                         gender,
                         create_time,
                         operate_time,
                         start_date,
                         end_date
                  from dim_user_zip
                  where ds = '20250918'
                  union
                  select id,
                         concat(substr(name, 1, 1), '*')                name,
                         if(phone_num regexp
                            '^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\\d{8}$',
                            concat(substr(phone_num, 1, 3), '*'), null) phone_num,
                         if(email regexp '^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$',
                            concat('*@', split(email, '@')[1]), null)   email,
                         user_level,
                         birthday,
                         gender,
                         create_time,
                         operate_time,
                         '20250918'                                   start_date,
                         '99991231'                                   end_date
                  from (
                           select id,
                                  name,
                                  phone_num,
                                  email,
                                  user_level,
                                  birthday,
                                  gender,
                                  create_time,
                                  operate_time,
                                  row_number() over (partition by id order by ds desc) rn
                           from ods_user_info
                           where ds = '20250918'
                       ) t1
                  where rn = 1
              ) t2
     ) t3;



select *
from dim_user_zip;

