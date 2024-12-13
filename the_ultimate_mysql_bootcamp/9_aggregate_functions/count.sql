-- count the rows
SELECT COUNT(*)
FROM books;
-- count all author_fname (doesn't count empty author_fname)
SELECT COUNT(author_fname)
FROM books;
-- count the distinct author_fname (unique values)
SELECT COUNT(DISTINCT author_fname)
FROM books;
-- count the distinct released_year (unique values)
SELECT COUNT(DISTINCT released_year)
FROM books;
SELECT COUNT(title)
FROM books
WHERE title LIKE '%the%';