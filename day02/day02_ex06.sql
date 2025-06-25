SELECT  m.pizza_name AS pizza_name,
		piz.name AS pizzeria_name
FROM menu m
INNER JOIN pizzeria piz ON m.pizzeria_id = piz.id
INNER JOIN person_order po ON m.id = po.menu_id
INNER JOIN person per ON po.person_id = per.id
WHERE per.name IN ('Denis', 'Anna')
ORDER BY 1, 2;