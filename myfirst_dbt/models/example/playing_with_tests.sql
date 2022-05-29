{{config(materialized='table',alias='CUSTOMER_TEST')}}
select
*
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF100"."CUSTOMER"
