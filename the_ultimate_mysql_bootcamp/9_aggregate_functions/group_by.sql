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