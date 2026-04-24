# Write your MySQL query statement below
with first_logins as (select player_id, min(event_date) as first_login
from Activity
group by player_id)

select round(count(a.player_id)/(select count(distinct player_id) from Activity),2) as fraction
from first_logins f
left join Activity a 
on f.player_id=a.player_id and 
f.first_login=date_sub(a.event_date,interval 1 day)