SELECT AVG(released_year)
FROM books;
--
SELECT AVG(pages)
FROM books;
-- Calculate the average stock quantity for books released in the same year
SELECT released_year,
    AVG(stock_quantity),
    COUNT(*)
FROM books
GROUP BY released_year;