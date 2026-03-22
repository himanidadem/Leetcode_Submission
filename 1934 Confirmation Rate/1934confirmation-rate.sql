# Write your MySQL query statement below
select user_id,
round(count(case when action="confirmed" then user_id end)/count(*),2) as confirmation_rate
from Signups 
left join Confirmations using(user_id)
group by user_id