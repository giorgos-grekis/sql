-- select all books written before 1980
SELECT *
FROM books
WHERE released_year < 1980;
-- select all books written by 'Eggers' or 'Chabon' 
SELECT *
FROM books
WHERE author_lname = 'Eggers'
    OR author_lanme = 'Chabon';
-- select all books written by 'Lahiri' and published after 2000
SELECT *
FROM books
WHERE author_lanme = 'Lahiri'
    AND released_year > 2000;
-- select all books with page counts between 100 and 200
-- version_1
SELECT *
FROM books
WHERE pages >= 100
    AND pages <= 200;
-- version_2
SELECT *
FROM books
WHERE pages BETWEEN 100 AND 200;
-- select all books where author_lname stars with a 'C' or an 'S'
-- version_1
SELECT title,
    author_lanme
FROM books
WHERE author_lname LIKE 'C%'
    OR author_lname LIKE 'S%';
-- version_2
SELECT title,
    author_lanme
FROM books
WHERE SUBSTR(author_lname, 1, 1) in ('C', 'S');
----------------------- CASE -------
-- if title contains 'stories' -> 'Short Stories'
-- 'Just Kids' and 'A Hearthbreaking' Work -> 'Memoir' 
-- Everything Else -> 'Novel'
-----------------------
--------------------------------
SELECT title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids'
        OR title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
        ELSE 'Novel'
    END AS type
FROM books;
-- select author_fname and author_lname and a column 'COUNT' to count author's books
SELECT author_fname,
    author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), 'books')
    END
FROM books
GROUP BY author_fname,
    author_lname
WHERE author_lname IS NOT NULL;