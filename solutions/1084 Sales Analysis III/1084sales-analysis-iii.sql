# Write your MySQL query statement below
select distinct p.product_id,p.product_name 
from Product as p
right join Sales as s
on p.product_id=s.product_id
group by s.product_id,p.product_name
having min(sale_date)>= '2019-01-01' and max(sale_date)<='2019-03-31'


-- SELECT DISTINCT p.product_id, p.product_name
-- FROM Sales s
-- LEFT JOIN Product p ON p.product_id = s.product_id
-- GROUP BY p.product_id
-- HAVING MIN(sale_date) >= '2019-01-01' AND MAX(sale_date) <= '2019-03-31';