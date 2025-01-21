-- What's a good use case for CHAR?
-- To store fixed length strings such as 
-- zip code ('12345', '14555', '22123')
-- county code ('US', 'GR', 'DE')
-- FILL In The Blanks
-- price is always < 1,000,000
CREATE TABLE inventory(
    item_name VARCHAR(255),
    price DECIMAL(10, 2),
    quantity INT UNSIGNED
);
-- What's the difference between DATETIME AND TIMESTAMP?
-- Store difference the date, 
-- DATETIME store the exactly date with 8 bytes and range between 1000-01-01 00:00:00 - 9999-12-31 23:59:59
-- TIMESTAMP store the date as Unix timestamp with 4 bytes and range between 1970-01-01 00:00:01 UTC - 2038-01-19 03:14:07 UTC
-- Print Out current time
SELECT CURRENT_TIME;
SELECT CURTIME();
-- Print Out the current date (but not time)
SELECT CURRENT_DATE;
SELECT CURDATE();
-- Print Out the current day of the week (the number)
SELECT DAY(CURRENT_DATE);
-- Print Out the current day of the week (the day name)
SELECT DAYNAME(CURRENT_DATE);
-- Print out the current day and time using this format (mm/dd/yyyy)
SELECT CURRENT_DATE,
    DATE_FORMAT(CURRENT_DATE, '%m/%d/%Y');
-- Print out the current day and time using this format (January 2nd at 3:15)
SELECT DATE_FORMAT(NOW(), '%M %D at %H:%i');
-- Create a tweets table that stores: 
-- 1) The Tweet content
-- 2) A Username
-- 3) Time it was created
CREATE TABLE tweets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tweet_content TEXT,
    username VARCHAR(255) NOT NULL,
    created_at TIMESTAMP default CURRENT_TIMESTAMP
);