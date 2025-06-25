SELECT piz.name AS pizzeria_name
FROM person_visits pv
INNER JOIN person per ON pv.person_id = per.id
INNER JOIN menu m ON pv.pizzeria_id = m.pizzeria_id
INNER JOIN pizzeria piz ON m.pizzeria_id= piz.id
WHERE per.name = 'Dmitriy' AND visit_date = '2022-01-08' AND price < 800