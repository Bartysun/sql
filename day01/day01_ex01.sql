--нужны дубликаты 
(Select 
	name  AS object_name
	from person 
	Order by object_name)
UNION ALL
(Select 
	pizza_name AS object_name
	from menu
	Order by object_name)

