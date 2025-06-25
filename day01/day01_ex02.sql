Select pizza_name from menu
UNION 
Select  pizza_name from menu
Order by pizza_name DESC

--аналогично
--Select DISTINCT pizza_name
--from menu
--Order by pizza_name DESC;