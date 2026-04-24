# Write your MySQL query statement below
with 
t as (select visited_on, sum(amount) as samount
from Customer
group by visited_on),

end_result as(select visited_on, 
sum(samount)over(order by visited_on rows between 6 preceding  and current row) as amount, 
round(avg(samount)over(order by visited_on rows between 6 preceding  and current row),2) as average_amount from t)



select visited_on,amount,average_amount 
from end_result
where visited_on>=(select min(visited_on) + interval 6 day from Customer)
order by visited_on






