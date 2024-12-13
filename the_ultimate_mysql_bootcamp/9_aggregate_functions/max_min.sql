SELECT MIN(released_year)
FROM books;
-- max pages
SELECT MIN(pages)
FROM books;
--  Subqueries
-- first run the query inside of parentheses 
-- and the query outside 
SELECT *
FROM books
WHERE pages = (
        SELECT Max(pages)
        FROM books
    );
-- select the older book
SELECT title,
    released_year
FROM books
WHERE released_year = (
        SELECT MIN(released_year)
        FROM books
    );