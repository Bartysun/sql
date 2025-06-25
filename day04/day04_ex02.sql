CREATE VIEW v_generated_dates (generated_date) AS
            SELECT gdate::date
            FROM generate_series('2022-01-01'::timestamp, '2022-01-31'::timestamp, '1 day'::interval) AS gdate
            ORDER BY 1;