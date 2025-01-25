-- Right Join
-- Select everything from B, along with any matching records in A
SELECT first_name,
    last_name,
    order_date,
    amount
FROM customers AS c
    RIGHT JOIN orders AS o ON c.id = o.customer_id;
-- INNER JOIN
SELECT first_name,
    last_name,
    order_date,
    amount
FROM customers AS c
    INNER JOIN orders AS o ON c.id = o.customer_id;