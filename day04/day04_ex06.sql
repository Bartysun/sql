CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats (pizzeria_name) AS
SELECT pi.name AS pizzeria_name
FROM person_visits pv
      INNER JOIN person p ON pv.person_id = p.id
      INNER JOIN pizzeria pi ON pv.pizzeria_id = pi.id
      INNER JOIN menu m ON pi.id = m.pizzeria_id
WHERE p.name = 'Dmitriy'
      AND pv.visit_date = '2022-01-08'
      AND m.price < 800;

--SELECT * FROM mv_dmitriy_visits_and_eats;