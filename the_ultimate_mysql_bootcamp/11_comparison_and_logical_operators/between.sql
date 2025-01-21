-- 1
SELECT title,
    released_year
FROM books
WHERE released_year <= 2015
    AND released_year >= 2004;
-- 2
SELECT title,
    released_year
FROM books
WHERE released_year BETWEEN 2004 AND 2014;
-- 3
SELECT title,
    released_year
FROM books
WHERE released_year NOT BETWEEN 2004 AND 2014;