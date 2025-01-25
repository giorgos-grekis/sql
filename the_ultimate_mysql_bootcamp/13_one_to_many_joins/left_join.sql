-- Left Join
-- Select everything from A, along with anr matching records in B.
-- A left join is useful, for example, if we need to know all the customers who didn't complete an order.
SELECT first_name,
    last_name,
    order_date,
    amount
FROM customers AS c
    LEFT JOIN orders ON orders.customer_id = c.id;
-- Left Join With Group By
-- set a default values if null
-- IFNULL(SUM(amount),0)
SELECT first_name,
    last_name,
    IFNULL(SUM(amount), 0) AS money_spent
FROM customers AS c
    LEFT JOIN orders AS o ON c.id = o.customer_id
GROUP BY first_name,
    last_name;