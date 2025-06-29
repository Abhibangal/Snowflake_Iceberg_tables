--call_center 60 records
create or replace iceberg table call_center
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='call_center'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.call_center;

--CATALOG_PAGE --50000 records --15sec -- XSMALL
create or replace iceberg table CATALOG_PAGE
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='CATALOG_PAGE'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.CATALOG_PAGE;

--CATALOG_SALES;--144,006,767,158 records --
use warehouse iceberg_table_wh;
create or replace iceberg table CATALOG_SALES
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='CATALOG_SALES'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.CATALOG_SALES limit 1000000000;

--CATALOG_RETURNS;--14,405,363,575 records
create or replace iceberg table CATALOG_RETURNS
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='CATALOG_RETURNS'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.CATALOG_RETURNS limit 1000000000;;

--CUSTOMER;--100,000,000 records

create or replace iceberg table CUSTOMER
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='CUSTOMER'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.CUSTOMER;

--CUSTOMER_ADDRESS;--50,000,000 records
use warehouse compute_wh;
create or replace iceberg table CUSTOMER_ADDRESS
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='CUSTOMER_ADDRESS'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.CUSTOMER_ADDRESS;


--CUSTOMER_DEMOGRAPHICS;--1,920,800 records
create or replace iceberg table CUSTOMER_DEMOGRAPHICS
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='CUSTOMER_DEMOGRAPHICS'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.CUSTOMER_DEMOGRAPHICS;

----DATE_DIM;--73049 records
create or replace iceberg table DATE_DIM
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='DATE_DIM'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.DATE_DIM;


--INCOME_BAND;--20 records
create or replace iceberg table INCOME_BAND
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='INCOME_BAND'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.INCOME_BAND;



--HOUSEHOLD_DEMOGRAPHICS;--7200 records
create or replace iceberg table HOUSEHOLD_DEMOGRAPHICS
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='HOUSEHOLD_DEMOGRAPHICS'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.HOUSEHOLD_DEMOGRAPHICS;


--INVENTORY;--1,965,337,830 records
use warehouse iceberg_table_wh;
create or replace iceberg table INVENTORY
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='INVENTORY'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.INVENTORY limit 1000000000;;


--ITEM;--502000 records
use warehouse compute_wh;
create or replace iceberg table ITEM
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='ITEM'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.ITEM;

--PROMOTION;--2500 records
create or replace iceberg table PROMOTION
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='PROMOTION'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.PROMOTION;

--REASON;--75 records
create or replace iceberg table REASON
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='REASON'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.REASON;


--STORE;--1902 records
create or replace iceberg table STORE
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='STORE'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.STORE;


--SHIP_MODE;--20 records
create or replace iceberg table SHIP_MODE
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='SHIP_MODE'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.SHIP_MODE;


--STORE_RETURNS;--28,794,603,867 records
use warehouse iceberg_table_wh;
create or replace iceberg table STORE_RETURNS
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='STORE_RETURNS'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.STORE_RETURNS limit 1000000000;;


--STORE_SALES;--288,010,550,524 records
create or replace iceberg table STORE_SALES
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='STORE_SALES'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.STORE_SALES limit 1000000000;;


--TIME_DIM;--86400 records
create or replace iceberg table TIME_DIM
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='TIME_DIM'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.TIME_DIM;



--WAREHOUSE;--30 records
create or replace iceberg table WAREHOUSE
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='WAREHOUSE'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.WAREHOUSE;


--WEB_RETURNS;--7,200,334,357 records
use warehouse iceberg_table_wh;
create or replace iceberg table WEB_RETURNS
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='WEB_RETURNS'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.WEB_RETURNS limit 1000000000;;

--WEB_PAGE;--5004 records
create or replace iceberg table WEB_PAGE
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='WEB_PAGE'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.WEB_PAGE;


--WEB_SALES;--71,997,815,522 records
use warehouse iceberg_table_wh;
create or replace iceberg table WEB_SALES
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='WEB_SALES'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.WEB_SALES limit 1000000000;;


--WEB_SITE;--96 records
create or replace iceberg table WEB_SITE
external_volume = 'azure_external_volume' 
catalog = 'SNOWFLAKE'
BASE_LOCATION ='WEB_SITE'
as
select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.WEB_SITE;



