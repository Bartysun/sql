--Найдите объединение пиццерий, в которых есть заказы либо от женщин,
--либо от мужчин. Другими словами, вам следует найти набор названий пиццерий,
--которые были заказаны только женщинами, и выполнить операцию "UNION" 
--с набором названий пиццерий, которые были заказаны только мужчинами. 
--Будьте осторожны со словом "only" для обоих полов. 
--Не сохраняйте дубликаты ( UNION, EXCEPT, INTERSECT).
--Пожалуйста, отсортируйте результат по названию пиццерии. 

WITH men_orders AS (
                    SELECT m.pizzeria_id
                    FROM person_order po INNER JOIN person p ON po.person_id = p.id 
                                         INNER JOIN menu m ON po.menu_id = m.id
                    WHERE p.gender = 'male'
), women_orders AS (
                    SELECT m.pizzeria_id
                    FROM person_order po INNER JOIN person p ON po.person_id = p.id 
                                         INNER JOIN menu m ON po.menu_id = m.id
                    WHERE p.gender = 'female'
), pi_men_orders_only AS (
                    SELECT m.pizzeria_id 
                    FROM person_order po INNER JOIN menu m ON po.menu_id = m.id 
                    EXCEPT 
                    SELECT pizzeria_id FROM women_orders 
), pi_women_orders_only AS (
                    SELECT m.pizzeria_id 
                    FROM person_order po INNER JOIN menu m ON po.menu_id = m.id 
                    EXCEPT 
                    SELECT pizzeria_id FROM men_orders 
), pi_men_or_women_only AS (
                    SELECT pizzeria_id FROM pi_men_orders_only
                    UNION 
                    SELECT pizzeria_id FROM pi_women_orders_only
) 
SELECT DISTINCT pi.name AS pizzeria_name
FROM pi_men_or_women_only pimwo 
INNER JOIN pizzeria pi ON pimwo.pizzeria_id = pi.id
ORDER BY 1;
