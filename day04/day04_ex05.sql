CREATE VIEW v_price_with_discount (name, pizza_name, price, discount_price) AS
            SELECT p.name, m.pizza_name, m.price, (m.price-m.price*0.1)::integer AS discount_price
            FROM person_order po INNER JOIN person p ON po.person_id = p.id 
                                 INNER JOIN menu m ON po.menu_id = m.id                                
            ORDER BY 1, 2;