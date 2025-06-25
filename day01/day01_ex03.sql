Select 
	order_date AS action_date,
	person_id 
	from person_order
INTERSECT 
Select 
	 visit_date AS action_date,
	 person_id
	 from person_visits
Order by action_date, person_id DESC
--INTERSECT - пересечение строк (остаются строки, 
--присутствующие в результатах обоих запросов);