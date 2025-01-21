SELECT title,
    released_year
FROM books
WHERE released_year < 2000
ORDER BY released_year;
-- 1
SELECT *
FROM books
WHERE pages < 200;
-- 2
SELECT *
FROM books
WHERE released_year < 2000;
-- 3
SELECT *
FROM books
WHERE released_year <= 1985;