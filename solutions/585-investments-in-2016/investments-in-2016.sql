# Write your MySQL query statement below
-- select sum(tiv_2016) as tiv_2016
-- from(select pid,tiv_2015,tiv_2016
-- from Insurance 
-- group by lat,lon
-- having count(*)=1)t
-- group by tiv_2015
-- having count(*)>1





select round(sum(tiv_2016),2) as tiv_2016 
from Insurance
where tiv_2015 in (select tiv_2015 from Insurance group by tiv_2015 having count(*)>1) and
pid in (select pid from Insurance group by lat,lon having count(*)=1)