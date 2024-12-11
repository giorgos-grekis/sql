SELECT
    author_lname
FROM
    books
ORDER BY
    author_lname;

-- ASCENDING by Default (a-z)
-- with DESCENDING order DESC (z-a)
SELECT
    author_lname
FROM
    books
ORDER BY
    author_lname DESC;

SELECT
    title,
    pages
FROM
    books
ORDER BY
    pages DESC;

-- same as above ORDER BY the second argument
SELECT
    title,
    pages
FROM
    books
ORDER BY
    2 DESC;