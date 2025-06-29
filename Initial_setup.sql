use role accountadmin;
create database test_analytics;
create schema test_analytics.dw_stage;

-- create a medium warehouse of gen2
create warehouse iceberg_table_wh
WAREHOUSE_TYPE = 'STANDARD'
WAREHOUSE_SIZE = 'MEDIUM'
RESOURCE_CONSTRAINT = 'STANDARD_GEN_2'
AUTO_RESUME = TRUE
AUTO_SUSPEND=  300;
