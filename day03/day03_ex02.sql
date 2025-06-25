--Пожалуйста, используйте SQL-выражение из упражнения № 01 
--и выведите на экран названия пицц из пиццерии, 
--которые никто не заказывал, включая соответствующие цены.
--Результат должен быть отсортирован по названию пиццы и цене.

WITH pn AS (
		SELECT id AS menu_id FROM menu
		EXCEPT
		SELECT menu_id FROM person_order
		)
SELECT menu.pizza_name,
		menu.price,
		pizzeria.name AS pizzeria_name
FROM menu
INNER JOIN pn ON pn.menu_id = menu.id 
INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY 1, 2
