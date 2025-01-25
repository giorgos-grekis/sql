-- When you try to delete you get this error.
--ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`shop`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`))
DELETE FROM customers
WHERE last_name = 'George';
-- put on the schema
-- ON DELETE CASCADE: this says the foreign key that references the customer's ID, if that customer with that ID id deleted from the customers table, delete every row from orders that has as its customer ID.
-- create customers table
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);
-- create orders table
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8.2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);