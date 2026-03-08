# Write your MySQL query statement below
with running_total as 
(select *,sum(weight) over(order by turn) as total_weight 
from Queue)


select person_name from running_total
where total_weight<=1000
order by total_weight desc
limit 1