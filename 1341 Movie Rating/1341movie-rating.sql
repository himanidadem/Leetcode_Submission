# Write your MySQL query statement below

-- (select u.name as results
-- from (select user_id, count(movie_id) as rating_count from MovieRating group by user_id) rct
-- left join Users as u
-- on rct.user_id=u.user_id
-- order by rct.rating_count desc, u.name asc
-- limit 1)

-- union all
-- (select m.title as results from
-- (select movie_id,avg(rating) as avg_rating
-- from MovieRating
-- where date_format(created_at,'%Y-%m')='2020-02'
-- group by movie_id)t
-- left join Movies as m
-- on m.movie_id=t.movie_id
-- order by t.avg_rating desc, m.title asc
-- limit 1)



(select u.name as results
from MovieRating m
join Users u
on m.user_id=u.user_id
group by u.user_id
order by count(*) desc, u.name
limit 1)

union all

(select m.title as results
from MovieRating mr
join Movies m
on mr.movie_id=m.movie_id
where date_format(mr.created_at,'%Y-%m')='2020-02'
group by mr.movie_id
order by avg(mr.rating) desc, m.title
limit 1
)