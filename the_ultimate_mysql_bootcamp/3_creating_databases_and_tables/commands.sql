-- To list available databases:
show databases;

--  Show what database have select
select databese();


-- The general command for creating a database:
CREATE DATABASE <database_name>;

-- A specific example:
CREATE DATABASE soap_store;

-- To drop a database:
DROP DATABASE <database-name>;

-- To use a database:
USE <database-name>;

-- Creating Tables:
CREATE TABLE dogs (
    name VARCHAR(50),
    breed VARCHAR(50),
    age INT
);

--Show details of the table:
SHOW COLUMNS FROM <table-name>;
-- or
DESC <table-name>;

--Deleting Table:
DROP TABLE <tablename>;

-- Insert data into a table
INSERT INTO <tableName>(<tableColumn>)
VALUES(<value>);

-- To view all rows in our table:
SELECT <something> FROM <tableName>;

-- Multiple Insert:
INSERT INTO cats (name, age) 
VALUES 
  ('Meatball', 5) , 
  ('Turkey', 1), 
  ('Potato Face', 15);


-- Using NOT NULL:
CREATE TABLE cats2 (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);


-- Introducing Primary Keys
CREATE TABLE unique_cats (
	cat_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

--  AUTO_INCREMENT
-- AUTO_INCREMENT in MySQL is replaced by IDENTITY(1,1) in SQL Server
CREATE TABLE unique_cats3 (
    cat_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
);

