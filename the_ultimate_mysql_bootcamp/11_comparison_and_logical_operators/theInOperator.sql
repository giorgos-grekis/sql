-- 1
SELECT title,
    author_lname
FROM books
WHERE author_lname = 'Carver'
    OR author_lname = 'Lahiri'
    OR author_lname = 'Smith';
-- 2
SELECT title,
    author_lname
FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
-- 3
SELECT title,
    author_lname
FROM books
WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');
-- 4
SELECT title,
    released_year
FROM books
WHERE released_year >= 2000
    AND released_year % 2 = 1;