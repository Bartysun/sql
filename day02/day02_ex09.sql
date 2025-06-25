--INTERSECT возвращает только общие строки, исключая дубликаты

SELECT per.name
FROM person per
INNER JOIN person_order po ON per.id = po.person_id
INNER JOIN menu m ON po.menu_id = m.id
WHERE gender = 'female' AND pizza_name = 'pepperoni pizza'
INTERSECT
SELECT per.name
FROM person per
INNER JOIN person_order po  ON per.id = po.person_id
INNER JOIN menu m ON po.menu_id = m.id
WHERE gender = 'female' AND pizza_name = 'cheese pizza'
ORDER BY 1;