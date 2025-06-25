--NATURAL JOIN в SQL автоматически соединяет таблицы, 
--основываясь на общих столбцах с одинаковыми именами, 
--NATURAL JOIN исключает дублирующиеся столбцы из результирующего набора данных,
--где ключевые значения совпадают в обеих таблицах.
--CONCAT(p.name, ' (age:', p.age, ')')
Select 	
	po.order_date, 
	(p.name||' (age:'||p.age||')') AS person_informtion
from person_order po
Natural Join (Select id AS person_id, name, age from person) p 
Order by 1,2 
