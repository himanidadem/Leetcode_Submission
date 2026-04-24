# Write your MySQL query statement below

with ranks_table as(select d.name as Department,e.name as Employee,e.salary as Salary,dense_rank() over(partition by e.departmentId order by e.salary desc) as ranks
from Employee as e
left join Department as d
on e.departmentId=d.id)

select Department, Employee, Salary
from ranks_table
where ranks<=3
order by Salary desc