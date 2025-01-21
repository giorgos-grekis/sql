SELECT *
FROM books
WHERE released_year != 2017;
-- lname not equal to 'Gaiman'
SELECT title,
    author_lname
FROM books
WHERE author_lname != 'Gaiman';