with orders as (
  select * from {{ ref('orders') }}
)

select 
  customer_id,
  sum(amount) as lifetime_value
from orders
group by 1