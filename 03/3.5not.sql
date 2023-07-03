(SELECT course.id FROM course
LEFT JOIN student_on_course ON course.id <> student_on_course.course_id
)
UNION
(SELECT student_on_course.id FROM student_on_course
LEFT JOIN course ON  student_on_course.course_id <> course.id 
)
ORDER BY id


SELECT course.id FROM course 
LEFT JOIN student_on_course ON course.id = student_on_course.course_id 
WHERE student_on_course.id IS NULL
UNION SELECT student_on_course.course_id 
FROM student_on_course 
LEFT JOIN course ON student_on_course.course_id = course.id 
WHERE course.id IS NULL ;
