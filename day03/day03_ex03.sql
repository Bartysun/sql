--Найдите пиццерии, которые чаще посещали женщины или мужчины.
--Сохраните дубликаты для любых операторов SQL с множествами
--(конструкции UNION ALL, EXCEPT ALL, INTERSECT ALL).
--Отсортируйте результат по названию пиццерии. 

WITH pv_male AS ( 
                 SELECT pv.pizzeria_id AS pizzeria_id 
                 FROM person_visits pv 
				 INNER JOIN person p ON pv.person_id = p.id                    
                 WHERE p.gender = 'male'
), pv_female AS  (
                 SELECT pv.pizzeria_id AS pizzeria_id 
                 FROM person_visits pv 
				 INNER JOIN person p ON pv.person_id = p.id    
                 WHERE p.gender = 'female'
), pv_diff AS (
               (SELECT pizzeria_id FROM pv_male
                EXCEPT ALL 
                SELECT pizzeria_id FROM pv_female)
               UNION ALL
               (SELECT pizzeria_id FROM pv_female
                EXCEPT ALL 
                SELECT pizzeria_id FROM pv_male)
)
SELECT DISTINCT pi.name AS pizzeria_name
FROM pv_diff
INNER JOIN pizzeria pi ON pv_diff.pizzeria_id = pi.id
ORDER BY 1;

