--Сессия №1 
--шаг 1                                                     
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--шаг 3
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 3.6 
--шаг 5
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut'; 
--шаг 7
COMMIT; -- COMMIT TRANSACTION 
--шаг 9
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 4

--Сессия №2
--шаг 2   
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--шаг 4
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 3.6
--шаг 6
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut'; --ошибка из-за параллельного изменения
--шаг 8
COMMIT; -- ROLLBACK 
--шаг 10
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- raiting = 4
