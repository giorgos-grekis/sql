-- READ

-- * => Give Me All Columns
SELECT * FROM cats;

-- name => Give Me Only the Name
SELECT name from cats;

-- age => Give Me Only the Age
SELECT age from cats;

-- Give Me the Name and Age
SELECT name, age from cats;


-- Give Me All from cats where  the age is 4 
SELECT * FROM cats WHERE age=4;


-- Give Me Only name and age from the cats where the age is 4 
SELECT name, age FROM cats WHERE age=4;


-- Give Me All from cats where  the name is Egg
-- In this example it is case (insensitive)
-- Return the same if name='egg' or name='eGG'
SELECT * FROM cats WHERE name='Egg';


-- ALIAS
-- Use 'AS' to alias a column in your results (it doesn't actually change the name of the column in the table)

SELECT cat_id AS id, name FROM cats;


-- UPDATE
UPDATE cats SET breed='Short Hair' WHERE breed='Tabby'

-- DELETE 
-- Delete all cats with name of 'Egg':
DELETE FROM cats WHERE name='Egg';
-- Delete all rows in the cats table:
DELETE FROM cats;


