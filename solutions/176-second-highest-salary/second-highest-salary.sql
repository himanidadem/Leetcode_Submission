# Write your MySQL query statement below
-- select max(salary) as SecondHighestSalary
-- from (select salary,dense_rank() over(order by salary) as rk
-- from Employee)t
-- where rk=2

select coalesce(
(select distinct salary 
from Employee
order by salary desc
limit 1 offset 1),null) as SecondHighestSalary