--Сессия №1 
--шаг 1                                                     
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
--шаг 3
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 4 
--шаг 6
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 3.6
--шаг 7
COMMIT; 
--шаг 8
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 3.6

--Сессия №2
--шаг 2   
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
--шаг 4
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut'; 
--шаг 5
COMMIT;
--шаг 9
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- rating = 3.6
