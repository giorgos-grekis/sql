SELECT CONCAT('pi', 'ckle');
 
SELECT CONCAT(author_fname,' ', author_lname) AS author_name FROM books;


-- CONCAT_WS => Concat With Separator
SELECT CONCAT_WS(' - ',title, author_fname, author_lname) FROM books;