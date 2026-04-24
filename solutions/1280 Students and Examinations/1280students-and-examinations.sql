# Write your MySQL query statement below
with base_table as(select student_id,student_name,subject_name
from Students
cross join Subjects)

select b.student_id,b.student_name,b.subject_name,count(e.subject_name) as attended_exams
from base_table b
left join Examinations e
on b.student_id=e.student_id and b.subject_name=e.subject_name
group by student_id,student_name,subject_name
order by student_id,subject_name
