-- GROUP BY summarizes or aggregates identical data into single rows
SELECT author_lname
FROM books
GROUP BY author_lname;
--
SELECT author_lname,
COUNT(*)
FROM books
GROUP BY author_lname;
-- 
SELECT author_lname,
    COUNT(*) AS books_written
FROM books
GROUP BY author_lname
ORDER BY books_written DESC;
-- Grouping By Multiple Columns (GROUP BY author_lname, author_fname)
SELECT CONCAT(author_lname, ' ', author_fname) as author,
    COUNT(*)
FROM books
GROUP BY author_lname,
    author_fname;