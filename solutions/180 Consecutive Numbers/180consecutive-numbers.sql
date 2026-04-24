# Write your MySQL query statement below
select distinct num1 as ConsecutiveNums
from(select id, num as num1, lead(num,1) over(order by id) as num2, lead(num,2) over(order by id) as num3
from Logs)t
where num1=num2 and num2=num3
