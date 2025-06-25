--Сессия №1 
--шаг 1                                                     
BEGIN; -- START TRANSACTION ISOLATION LEVEL
--шаг 3
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 5 
--шаг 5
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut'; 
--шаг 7
COMMIT; -- COMMIT TRANSACTION 
--шаг 9
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 3.6 (rating = 4 was lost )

--Сессия №2
--шаг 2  
BEGIN; -- START TRANSACTION ISOLATION LEVEL
--шаг 4
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 5 
--шаг 6
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut'; 
--шаг 8
COMMIT; -- COMMIT TRANSACTION 
--шаг 10
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 3.6
