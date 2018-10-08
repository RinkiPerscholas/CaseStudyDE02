SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;
insert into table CDW_SAPP_D_BRANCH
PARTITION(BRANCH_STATE)
select
BRANCH_CODE,
BRANCH_NAME,
BRANCH_STREET,
BRANCH_CITY,
BRANCH_ZIP,
BRANCH_PHONE,
LAST_UPDATED,
BRANCH_STATE
from external_CDW_SAPP_BRANCH;

