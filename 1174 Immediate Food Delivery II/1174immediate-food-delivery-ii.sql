# Write your MySQL query statement below
with first_orders as(select *, rank() over(partition by customer_id order by order_date) as order_number
from Delivery
)

select round(count(case when order_date=customer_pref_delivery_date then customer_id end)*100/count(*),2) as immediate_percentage
from first_orders
where order_number=1
