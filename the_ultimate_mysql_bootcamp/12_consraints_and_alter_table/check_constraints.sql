CREATE TABLE partiers (name VARCHAR(50), age INT CHECK (age > 18));
-- create another  table
CREATE TABLE users(
    username VARCHAR(20) NOT NULL,
    age INT CHECK(age > 0)
);
-- insert data into users table
INSERT INTO users (username, age)
VALUES('bluethecat', 50);
-- This insert would result in an error because age value is less that 18 (age > 18):
INSERT INTO users (username, age)
VALUES('bluethecat', -3);
-- CREATE a palindromes table
CREATE TABLE palindromes(word VARCHAR(100) CHECK(REVERSE(word) = word));
-- it's works
INSERT INTO palindromes (word)
VALUES ('racecar');
-- this doesn't work
INSERT INTO palindromes(word)
VALUES('mommy');