# Write your MySQL query statement below
-- select max(salary) as SecondHighestSalary from(select *, rank() over(order by salary desc) as ranks from Employee)t where ranks=2

select ifnull(
(select distinct salary
from Employee
order by salary desc
limit 1 offset 1),null) as SecondHighestSalary