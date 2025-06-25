--INNER JOIN. Возвращаются только те строки,
--где ключевые значения совпадают в обеих таблицах.
--CONCAT(p.name, ' (age:', p.age, ')')
Select 	
	po.order_date, 
	(p.name||' (age:'||p.age||')') AS person_informtion
from person_order po
Inner Join person p ON po.person_id = p.id
Order by 1,2 
