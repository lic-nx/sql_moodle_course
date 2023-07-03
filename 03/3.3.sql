-- c.	Напишите SQL запрос который возвращает 
-- название курса и количество заявленных 
-- студентов в отсортированном списке по количеству
-- слушателей в возрастающем порядке, НО запись с 
-- количеством слушателей равным 300 должна быть на первом 
-- месте. Ограничьте вывод данных до 3 строк. 
-- Пример результата представлен ниже

--вариант решения 1
-- SELECT name, amount_of_students FROM course
-- WHERE amount_of_students = 300
-- UNION ALL
-- (SELECT name, amount_of_students FROM course
-- WHERE amount_of_students <> 300
-- ORDER BY amount_of_students)
-- LIMIT 3;


SELECT name, amount_of_students FROM course
ORDER BY CASE
	when amount_of_students=300 THEN 0
	ELSE 1
END, amount_of_students ASC LIMIT 3

