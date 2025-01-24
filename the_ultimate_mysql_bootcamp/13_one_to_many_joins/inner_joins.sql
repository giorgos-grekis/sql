-- Inner Joins Select all records from A and B
-- Where the join condition is met
-- inner join is the default join so we don't need to pass INNER JOIN when we add JOIN
-- with inner join
SELECT *
FROM customers
    INNER JOIN orders ON orders.customer_id = customers.id;
-- with out inner join
SELECT *
FROM customers
    JOIN orders ON orders.customer_id = customers.id;
--
SELECT * FROM orders JOIN customers.id = orders.customer_id;
-- GROUP BY with INNER JOIN
-- order_date error
-- ERROR 1055 (42000): Expression #3 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'shop.orders.order_date' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
-- order_date isn't going to work because it's no longer between all the rows, we grouping the rows by first_name and last_name
SELECT first_name,
    last_name,
    SUM(amount) AS total
FROM customers AS c
    INNER JOIN orders ON orders.customer_id = c.id
GROUP BY first_name,
    last_name
ORDER BY total;