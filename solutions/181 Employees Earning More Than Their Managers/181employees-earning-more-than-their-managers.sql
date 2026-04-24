select t1.name as Employee
from Employee as t1
join Employee as t2
on t1.managerid=t2.id
where t1.salary>t2.salary