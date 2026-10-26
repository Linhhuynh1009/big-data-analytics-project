
-- 1. Select the project database
USE bigdataprj;

-- 2. Check the source tables
SHOW TABLES;

-- 3. Join sales history with calendar
SELECT
    s.id,
    s.item_id,
    s.dept_id,
    s.cat_id,
    s.store_id,
    s.state_id,
    s.day,
    s.sales,
    c.date,
    CASE
        WHEN c.event_name_1 IS NOT NULL
          OR c.event_name_2 IS NOT NULL
        THEN 1
        ELSE 0
    END AS is_holiday
FROM sales_history AS s
LEFT JOIN calendar AS c
    ON s.day = c.d
LIMIT 100;