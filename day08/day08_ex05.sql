--Сессия №1 
--шаг 1                                                     
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
--шаг 3
SELECT SUM(rating) FROM pizzeria; -- SUM(rating) = 21.9
--шаг 6
SELECT SUM(rating) FROM pizzeria; -- SUM(rating) = 26.9
--шаг 7
COMMIT; 
--шаг 8
SELECT SUM(rating) FROM pizzeria; -- SUM(rating) = 26.9

--Сессия №2
--шаг 2   
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
--шаг 4
INSERT INTO pizzeria (id, name, rating) VALUES (10, 'Kazan Pizza', 5);
--шаг 5
COMMIT;
--шаг 9
SELECT SUM(rating) FROM pizzeria; -- SUM(rating) = 26.9
