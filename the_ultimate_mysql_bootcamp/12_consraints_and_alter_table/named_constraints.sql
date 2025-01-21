CREATE TABLE users2(
    username VARCHAR(20) NOT NULL,
    age INT CONSTRAINT age_not_negative CHECK (age >= 0)
);
-- This doesn't work and throw the error: 
-- ERROR 3819 (HYOO: Check constraint 'age_not_negative' is violated.
INSERT INTO users2(username, age)
VALUES('chicjenlady', '-9');
-- create new table palindromes2 with a CONSTRAINT named CHECK 
CREATE TABLE palindromes2 (
    word VARCHAR(100),
    CONSTRAINT word_is_palindrome CHECK(REVERSE(word) = word)
);