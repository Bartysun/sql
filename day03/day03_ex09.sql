--Пожалуйста, запишите новые визиты в ресторан Domino's Денисом и Ириной 2022-02-24.

INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
SELECT  (SELECT max(pv.id) + 1 FROM person_visits pv) AS new_person_visit_id, 
        (SELECT min(p.id) FROM person p WHERE p.name = 'Denis') AS person_id,
        (SELECT min(pi.id) FROM pizzeria pi WHERE pi.name = 'Dominos') AS pizzeria_id,
        '2022-02-24' AS visit_date;

INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
SELECT  (SELECT max(pv.id) + 1  FROM person_visits pv) AS new_person_visit_id, 
        (SELECT min(p.id) FROM person p WHERE p.name = 'Irina') AS person_id,
        (SELECT min(pi.id) FROM pizzeria pi WHERE pi.name = 'Dominos') AS pizzeria_id,
        '2022-02-24' AS visit_date;

/*SELECT name, visit_date
FROM person_visits pv
INNER JOIN person p ON p.id = pv.person_id
WHERE p.name IN ('Denis', 'Irina')*/