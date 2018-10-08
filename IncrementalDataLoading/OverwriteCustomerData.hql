
SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;
insert overwrite table CDW_SAPP_D_CUSTOMER
PARTITION(CUST_STATE)
select
CUST_SSN,
CUST_F_NAME,
CUST_M_NAME,
CUST_L_NAME,
CUST_CC_NO,
CUST_STREET,
CUST_CITY,
CUST_COUNTRY,
CUST_ZIP,
CUST_PHONE,
CUST_EMAIL,
LAST_UPDATED,
CUST_STATE
from external_CDW_SAPP_CUSTOMER;