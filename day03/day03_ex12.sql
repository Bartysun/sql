--Пожалуйста, зарегистрируйте новые заказы всех лиц на "греческую пиццу" 2022-02-25.

INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT num + (SELECT max(po.id) FROM person_order po) AS new_po_id, 
       (SELECT p.id FROM person p ORDER BY p.id OFFSET num-1 LIMIT 1) AS person_id, 
       (SELECT min(m.id) FROM menu m WHERE m.pizza_name = 'greek pizza') AS menu_id,
       '2022-02-25' AS order_date
FROM generate_series(1, (SELECT count(*) FROM person), 1) AS num;

/*select po.id, po.person_id, po.menu_id, po.order_date, m.pizza_name
from person_order po
INNER JOIN menu m ON m.id = po.menu_id
WHERE order_date = '2022-02-25'*/