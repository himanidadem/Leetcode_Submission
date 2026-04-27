# Write your MySQL query statement below
select product_name, sum(unit) as unit
from Orders  left join Products using (product_id)
where date_format(order_date,"%m-%Y")="02-2020"
group by product_name
having sum(unit)>=100