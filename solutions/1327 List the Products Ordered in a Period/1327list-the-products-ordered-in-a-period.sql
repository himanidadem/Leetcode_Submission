# Write your MySQL query statement below
select product_name, sum(o.unit) as unit
from Orders o
left join Products p
on o.product_id=p.product_id
where date_format(o.order_date,'%m-%Y')='02-2020'
group by product_name
having sum(o.unit)>=100