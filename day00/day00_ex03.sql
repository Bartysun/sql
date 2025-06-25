SELECT DISTINCT person_id
FROM person_visits
WHERE visit_date BETWEEN '2022-01-06' and '2022-01-09' or pizzeria_id='2'
ORDER by person_id DESC
