SELECT course.name as name FROM course
UNION
select student.name from student
ORDER BY name