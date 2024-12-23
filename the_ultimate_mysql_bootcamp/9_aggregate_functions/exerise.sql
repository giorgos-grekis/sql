-- Print the number of books in the database
SELECT COUNT(*)
FROM books;
--Print out how many books were released in each year
SELECT released_year,
    COUNT(*) AS books
FROM books
GROUP BY released_year
ORDER BY released_year DESC;
-- Print out the total number of books in stock
SELECT SUM(stock_quantity)
FROM books;
-- Find the average released_year for each author
SELECT CONCAT(author_fname, author_lname) AS author_name,
    AVG(released_year)
FROM books
GROUP BY author_lname,
    author_fname;
-- Find the full name if the author who wrote the longest book
SELECT CONCAT(author_fname, ' ', author_lname) AS author_name
FROM books
WHERE pages = (
        SELECT MAX(pages)
        FROM books
    );
-- 
SELECT released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year;