--Сессия №1 
--шаг 1                                                     
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
--шаг 3
UPDATE pizzeria SET rating = 4.0 WHERE name = 'Pizza Hut';
--шаг 5
UPDATE pizzeria SET rating = 4.0 WHERE name = 'Dominos';
--шаг 7
COMMIT; 

--Сессия №2
--шаг 2   
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
--шаг 4
UPDATE pizzeria SET rating = 4.0 WHERE name = 'Dominos';
--шаг 6
UPDATE pizzeria SET rating = 4.4 WHERE name = 'Pizza Hut'; --ошибка:обнаружена взаимоблокировка
--шаг 8
COMMIT; -- ROLLBACK
