Select 
	person_id
	from person_order
	Where order_date = '2022-01-07'
EXCEPT ALL
Select
	person_id
	from person_visits
	Where visit_date = '2022-01-07'
--EXCEPT ALL исключает из результатов первого запроса
--столько одинаковых строк, сколько найдет в результате выполнения второго запроса
--EXCEPT - исключение строк (из строк первого запроса исключаются строки второго запроса).