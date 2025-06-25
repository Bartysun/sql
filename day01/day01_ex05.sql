/*
Select *
from person, pizzeria
Order by person.id, pizzeria.id
*/

Select pe.id AS "person.id", pe.name AS "person.name", pe.age, pe.gender, pe.address,
       pi.id AS "pizzeria.id", pi.name AS "pizzeria.name", pi.rating
from person pe, pizzeria pi
Order by "person.id", "pizzeria.id"
