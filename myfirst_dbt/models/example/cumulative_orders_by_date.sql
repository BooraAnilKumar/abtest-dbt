{{config(materialized='table')}}

with date_by_price as
(
  select
  o.o_orderdate,
  sum(o.o_totalprice) tot_price_by_date
  from  "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o
  group by o.o_orderdate)
select
  o_orderdate,
  sum(o.tot_price_by_date) over ( order by o_orderdate rows between unbounded preceding and current row)as total_order_price
from  date_by_price o
