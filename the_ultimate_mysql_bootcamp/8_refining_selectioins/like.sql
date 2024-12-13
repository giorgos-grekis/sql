-- '%da%' => the '%' is wildcards, means any number of characters in front and in the end of 'da' word
SELECT title,
    author_fname,
    author_lname
FROM books
WHERE author_fname LIKE '%da%';
-- title included ':' 
SELECT title,
    author_fname,
    author_lname
FROM books
WHERE title LIKE '%:%';
-- return all the first name ends with 'n'
SELECT *
FROM books
WHERE author_fname LIKE '%n';
-- Escaping Wildcards '%' => '\%'
SELECT *
FROM books
WHERE title LIKE '%\%%';