Select  person.name AS person_name,
		menu.pizza_name, 
		pizzeria.name AS pizzeria_name
from person_order
        Inner Join person ON person_order.person_id = person.id
        Inner Join menu ON person_order.menu_id = menu.id
        Inner Join pizzeria ON menu.pizzeria_id = pizzeria.id
Order by person_name, pizza_name, pizzeria_name