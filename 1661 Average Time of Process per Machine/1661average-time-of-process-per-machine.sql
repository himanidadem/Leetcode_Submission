# Write your MySQL query statement below
#try to get start and end time in the same row

with duration as(select machine_id,process_id,
max(case when activity_type='end' then timestamp end)-max(case when activity_type='start' then timestamp end) as Duration
from Activity
group by machine_id,process_id)

select machine_id,round(avg(Duration),3) as processing_time
from duration
group by machine_id