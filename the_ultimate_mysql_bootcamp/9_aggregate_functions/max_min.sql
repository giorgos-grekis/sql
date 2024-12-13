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
-- min max with group by
-- find the year each author published 
SELECT author_fname,
    author_lname,
    COUNT(*) AS books_written,
    MIN(released_year) AS earliest_release,
    MAX(released_year) AS latest_release,
    MAX(pages) AS longest_page_count
FROM books
GROUP BY author_lname,
    author_fname;