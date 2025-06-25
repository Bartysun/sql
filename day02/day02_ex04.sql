SELECT m.pizza_name AS pizza_name, 
	   pizzeria.name AS pizzeria_name,
	   price
FROM menu m
INNER JOIN pizzeria ON m.pizzeria_id = pizzeria.id
Where m.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY 1, 2;