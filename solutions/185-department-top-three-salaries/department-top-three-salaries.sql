# Write your MySQL query statement below
with base as(select d.name as Department, e.name as Employee, e.Salary as Salary, dense_rank() over(partition by e.departmentId order by salary desc) as rk
from Employee as e
left join Department as d
on e.departmentId=d.id)

select Department, Employee, Salary
from base
where rk<=3