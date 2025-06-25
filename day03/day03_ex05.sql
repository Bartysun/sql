--Напишите SQL-выражение, которое возвращает список пиццерий,
--которые посетил Андрей, но не сделал заказ.
--Пожалуйста, сделайте заказ по названию пиццерии.

SELECT pi.name AS pizzeria_name
FROM person_visits pv
INNER JOIN pizzeria pi ON pi.id = pv.pizzeria_id
INNER JOIN person p ON p.id = pv.person_id
WHERE p.name = 'Andrey'
EXCEPT
SELECT pi.name 
FROM person_order po
INNER JOIN person p ON p.id = po.person_id
INNER JOIN menu m ON m.id = po.menu_id
INNER JOIN pizzeria pi ON pi.id = m.pizzeria_id
WHERE p.name = 'Andrey'
ORDER BY 1