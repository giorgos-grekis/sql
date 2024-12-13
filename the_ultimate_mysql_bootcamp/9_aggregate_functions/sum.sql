SELECT SUM(pages)
FROM books;
--
SELECT author_lname,
SUM(pages)
FROM books
GROUP BY author_lname;