--Пожалуйста, зарегистрируйте новые заказы от Дениса и Ирины 2022-02-24
-- на новое меню с "сицилийской пиццей".

INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT  (SELECT max(po.id) + 1 FROM person_order po) AS new_person_order_id, 
        (SELECT min(p.id) FROM person p WHERE p.name = 'Denis') AS person_id,
        (SELECT min(m.id) FROM menu m WHERE m.pizza_name = 'sicilian pizza') AS menu_id,
        '2022-02-24' AS order_date;

INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT  (SELECT max(po.id) + 1 FROM person_order po) AS new_person_order_id, 
        (SELECT min(p.id) FROM person p WHERE p.name = 'Irina') AS person_id,
        (SELECT min(m.id) FROM menu m WHERE m.pizza_name = 'sicilian pizza') AS menu_id,
        '2022-02-24' AS order_date;
		
/*SELECT name, order_date, pizza_name
FROM person_order po
INNER JOIN person p ON p.id = po.person_id
INNER JOIN menu m ON m.id = po.menu_id
WHERE p.name IN ('Denis', 'Irina') and order_date = '2022-02-24'*/