SELECT
    CONCAT (SUBSTRING(title, 1, 10), '...') AS 'short title'
FROM
    books;

SELECT
    CONCAT (
        SUBSTR (author_fname, 1, 1),
        '.',
        SUBSTR (author_lname, 1, 1)
    ) AS author_initials
FROM
    books;