# Write your MySQL query statement below
-- delete from Person where id not in
-- (select id from
--     (select id, row_number() over(partition by email order by id)as rk
--     from Person)t1
-- where rk=1)


delete p2
from Person p1 join Person p2
on p1.email=p2.email
where p1.id<p2.id