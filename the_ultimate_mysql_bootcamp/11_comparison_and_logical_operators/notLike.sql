-- select tile from the books where the title has not any spaces;
SELECT title
FROM books
WHERE title NOT LIKE '% %';
-- select from books table where the author_fname doesn't start with 'da'
SELECT title,
    author_fname,
    author_lname
FROM books
WHERE author_fname LIKE 'da%';
-- select from books table where doesn't contain the letter 'e'
SELECT title
FROM books
WHERE title NOT LIKE '%e%';