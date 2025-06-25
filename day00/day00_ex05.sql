SELECT 
    (SELECT name FROM person p WHERE p.id = po.person_id) as NAME
FROM person_order po
WHERE (menu_id = '13' or menu_id = '14' or menu_id = '18') and order_date = '2022-01-07'
