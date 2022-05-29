select
  sum(case when id is null then 1 else 0 end)/count(*) as total_null
from
  {{ref('my_first_dbt_model')}}
having um(case when id is null then 1 else 0 end)/count(*) <.1
