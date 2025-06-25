INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
SELECT (SELECT max(id)+1 FROM person_visits) AS new_pv_id,
       (SELECT min(p.id) FROM person p WHERE p.name = 'Dmitriy') AS person_id,
       (SELECT min(pi.id) 
        FROM pizzeria pi INNER JOIN menu m ON m.pizzeria_id = pi.id
        WHERE pi.name <> 'Papa Johns' AND m.price < 800) AS pizzeria_id,
       '2022-01-08' AS visit_date;

-- обновление
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats

--SELECT * FROM mv_dmitriy_visits_and_eats;