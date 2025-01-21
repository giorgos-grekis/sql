-- 1
SELECT title,
    author_lname,
    released_year
FROM books
WHERE released_year > 2010
    AND author_lname = 'Eggers';
-- 2
SELECT title,
    author_lname,
    released_year
FROM books
WHERE released_year > 2010
    AND author_lname = 'Eggers'
    AND title LIKE '%novel%';