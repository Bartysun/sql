/*Давайте вернемся к упражнению № 03 и изменим наш оператор SQL,
чтобы он возвращал имена людей вместо идентификаторов людей и
изменил порядок по action_date в восходящем режиме, 
а затем по person_name в нисходящем режиме.*/

Select t1.action_date,
		(Select name from person Where id = t1.person_id) AS person_name
from (Select 
	order_date AS action_date,
	person_id 
	from person_order
INTERSECT 
Select 
	 visit_date AS action_date,
	 person_id
	 from person_visits) t1
Order by action_date, person_name DESC

--INTERSECT - пересечение строк (остаются строки, 
--присутствующие в результатах обоих запросов);


