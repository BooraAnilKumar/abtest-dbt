
select sum(c_acctbal) as total_balance
from {{ref('playing_with_tests')}}
having sum(c_acctbal)< 100000000
