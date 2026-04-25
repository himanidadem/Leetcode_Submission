# Write your MySQL query statement below
select "Low Salary" as category, count(case when income<20000 then 1 end) as accounts_count from Accounts
union
select "Average Salary" as category, count(case when income between 20000 and 50000 then 1 end) as accounts_count from Accounts
union
select "High Salary" as category, count(case when income>50000 then 1 end) as accounts_count from Accounts



-- with category_table as(
-- select 
-- case when income<20000 then "Low Salary"
--     when income between 20000 and 50000 then "Average Salary"
--     when income>50000 then "High Salary" end as category 
-- from Accounts),

-- base_table as(
--     select "Low Salary" as category 
-- union
-- select "Average Salary" as category 
-- union 
-- select "High Salary" as category 
-- )


-- select base_table.category,count(category_table.category) as accounts_count 
-- from base_table 
-- left join category_table
-- on category_table.category=base_table.category
-- group by base_table.category