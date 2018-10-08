SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;
insert into table CDW_SAPP_D_TIME
PARTITION(YEAR)
select
TRANSACTION_ID,
TIMEID,
DAY,
MONTH,
QUARTER,
YEAR
from external_CDW_SAPP_D_TIME;

