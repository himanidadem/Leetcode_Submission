# Write your MySQL query statement below
(select name as results
from MovieRating
left join Users using (user_id)
group by user_id
order by count(user_id) desc, name asc
limit 1)

union all

(select title as results
from MovieRating
left join Movies using (movie_id)
where date_format(created_at,"%Y-%m")='2020-02'
group by movie_id
order by avg(rating) desc, title asc
limit 1)