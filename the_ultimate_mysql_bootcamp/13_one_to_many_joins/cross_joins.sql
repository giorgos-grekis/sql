SELECT id
FROM customers
WHERE last_name = 'George';
-- 
SELECT *
FROM orders
WHERE customer_id = (
        SELECT id
        FROM customers
        WHERE last_name = 'George'
    );
-- cross join
SELECT *
FROM customers,
    orders;