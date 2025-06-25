--Найдите одинаковые названия пиццы с одинаковой ценой,
--но из разных пиццерий. Убедитесь, что результат 
--упорядочен по названию пиццы.

SELECT m1.pizza_name,
		piz1.name AS pizzeria_name_1,
		piz2.name AS pizzeria_name_2,
		m1.price
FROM menu m1
INNER JOIN pizzeria piz1 ON piz1.id = m1.pizzeria_id
INNER JOIN menu m2 ON m2.pizza_name = m1.pizza_name 
			AND m1.price = m2.price 
INNER JOIN pizzeria piz2 ON piz2.id = m2.pizzeria_id
WHERE piz1.id > piz2.id
ORDER BY 1