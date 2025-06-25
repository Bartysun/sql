WITH gen AS (
    (SELECT days::DATE AS missing_date
     FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS days)
    )
SELECT missing_date 
FROM gen
LEFT JOIN
    (SELECT *
    FROM person_visits WHERE person_id IN (1, 2)) AS gd ON missing_date = gd.visit_date 
WHERE gd.person_id is NULL
ORDER BY 1;

/*WITH gen AS (
	SELECT days::DATE
	FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS days
	)
SELECT days::DATE AS missing_date
FROM (
	SELECT *
    FROM person_visits WHERE person_id IN (1, 2)) AS gd
RIGHT JOIN gen AS days ON gd.visit_date = days
WHERE gd.person_id is NULL
ORDER BY 1;*/