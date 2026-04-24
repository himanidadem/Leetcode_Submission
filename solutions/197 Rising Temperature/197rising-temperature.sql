# Write your MySQL query statement below

select today.id
from Weather today
join Weather yesterday 
on yesterday.recordDate=date_sub(today.recordDate,interval 1 day)
where today.temperature>yesterday.temperature