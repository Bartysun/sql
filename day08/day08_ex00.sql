--Сессия №1
--шаг 1                                                     
BEGIN; --  начало обновления
--шаг 2
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut'; --внесение данных
--шаг 3
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 5  --проверка внесенных данных
--шаг 5
COMMIT; -- отправка обновления 

--Сессия №2
--шаг 4
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 4.6 -- не видим внесенных данных
--шаг 6
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 5   -- ыидим отправленные уже данные

