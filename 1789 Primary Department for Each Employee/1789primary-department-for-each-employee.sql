# Write your MySQL query statement below
select employee_id, department_id
from (
    select *,
    row_number() over(partition by employee_id order by primary_flag) as row_num
    from Employee
)t
where row_num=1





-- select employee_id, department_id
-- from Employee
-- where primary_flag="Y"
-- union
-- select employee_id, department_id
-- from Employee
-- group by employee_id
-- having count(employee_id)=1


