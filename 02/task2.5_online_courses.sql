SELECT name, amount_of_students FROM course
WHERE is_online = 'true' and amount_of_students BETWEEN 27 and 310
ORDER BY name, amount_of_students