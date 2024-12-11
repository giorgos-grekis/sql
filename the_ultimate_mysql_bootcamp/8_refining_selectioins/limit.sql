SELECT
    title,
    released_year
FROM
    books
ORDER BY
    released_year DESC
LIMIT
    5;

-- same as above  LIMIT 0, 5 (0: start value, 5: end value);
SELECT
    title,
    released_year
FROM
    books
ORDER BY
    released_year DESC
LIMIT
    0, 5;