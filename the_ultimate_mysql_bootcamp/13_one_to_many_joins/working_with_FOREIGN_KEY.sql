-- create database; 
CREATE DATABASE shop;
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
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
-- insert into customer table data
INSERT INTO customers (first_name, last_name, email)
VALUES ('Boy', 'George', 'george@gmail.com'),
    ('George', 'Michael', 'gm@gmail.com'),
    ('David', 'Bowie', 'david@gmail.com'),
    ('Blue', 'Steel', 'blue@gmail.com'),
    ('Bette', 'Davis', 'bette@aol.com');
-- insert into orders table data
INSERT INTO orders(order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
    ('2017-11-11', 35.50, 1),
    ('2014-12-12', 800.67, 2),
    ('2015-01-03', 12.50, 2),
    ('1999-04-11', 450.25, 5);
-- insert more data into orders table 
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2022-11-11', 50.98, 975);
-- delete customers table
DROP TABLE customers;
-- delete orders table
DROP TABLE orders;