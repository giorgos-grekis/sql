-- DISTINCT select only once the same value
SELECT DISTINCT
    author_lname
FROM
    books;

SELECT DISTINCT
    released_year
FROM
    books;

SELECT DISTINCT
    CONCAT (author_fname, ' ', author_lname)
FROM
    books;

-- same as above select the distinct fist name and last name combinations
SELECT DISTINCT
    author_fname,
    author_lname
FROM
    books;