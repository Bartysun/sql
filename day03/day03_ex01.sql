--Найти все идентификаторы меню, которые не заказаны никем.
-- Результат должен быть отсортирован по идентификатору.

SELECT id AS menu_id
FROM menu
EXCEPT
SELECT menu_id
FROM person_order
ORDER by 1