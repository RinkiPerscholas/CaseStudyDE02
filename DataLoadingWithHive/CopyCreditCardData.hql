SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;
insert into table CDW_SAPP_F_CREDIT_CARD
PARTITION(TRANSACTION_TYPE)
select
TRANSACTION_ID,
CUST_CC_NO,
TIMEID ,
CUST_SSN,
BRANCH_CODE,
TRANSACTION_VALUE,
TRANSACTION_TYPE
from external_CDW_SAPP_CREDITCARD;



