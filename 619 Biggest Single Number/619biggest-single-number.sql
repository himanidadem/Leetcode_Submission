# Write your MySQL query statement below
select ifnull(max(num),null) as num from(
select *
from MyNumbers
group by num
having count(*)=1)t


