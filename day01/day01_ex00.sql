--нужны ли дубликаты ?
Select 
	id AS object_id,
	pizza_name AS object_name
	from menu
UNION ALL
Select 
	id,
	name
	from person
Order by object_id, object_name