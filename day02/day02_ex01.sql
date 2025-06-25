SELECT days::DATE AS missing_date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS days
LEFT JOIN
    (SELECT *
    FROM person_visits WHERE person_id IN (1, 2)) AS gd ON days = gd.visit_date
WHERE gd.person_id is NULL
ORDER BY 1;

/*SELECT days::DATE AS missing_date
FROM (
	SELECT *
    FROM person_visits WHERE person_id IN (1, 2)) AS gd
RIGHT JOIN generate_series('2022-01-01', '2022-01-10', interval '1 day') AS days ON days = gd.visit_date
WHERE gd.person_id is NULL
ORDER BY 1;
*/