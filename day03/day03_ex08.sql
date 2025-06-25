--Пожалуйста, зарегистрируйте новую пиццу с названием "sicilian pizza"
--(id которой должен быть вычислен по формуле "максимальное значение id + 1")
--с ценой 900 рублей в ресторане "Dominos" (пожалуйста, используйте внутренний
-- запрос для получения идентификатора пиццерии)

INSERT INTO menu (id, pizzeria_id, pizza_name, price)
SELECT  (SELECT (max(m.id) + 1) FROM menu m) AS new_menu_id,
        (SELECT min(pi.id) FROM pizzeria pi WHERE pi.name = 'Dominos') AS pizzeria_id,
        'sicilian pizza', 
        900;

/*
SELECT *
FROM menu
*/       