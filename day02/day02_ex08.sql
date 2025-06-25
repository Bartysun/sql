SELECT per.name
FROM person per 
JOIN person_order po  ON per.id = po.person_id
JOIN menu m ON po.menu_id = m.id
WHERE per.gender = 'male' AND per.address IN('Moscow', 'Samara')
  AND m.pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY 1 DESC;