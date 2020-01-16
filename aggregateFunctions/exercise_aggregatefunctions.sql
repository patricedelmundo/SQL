-- Print the number of books in the database
SELECT COUNT(*) FROM books;

-- Print out how many books were released each year
SELECT
	released_year, COUNT(*)
FROM books
GROUP BY released_year;
	
-- PRINT out the total number of books in stock
SELECT
	SUM(stock_quantity)
FROM books;

-- Find the average released year for each author
SELECT
	author_fname, author_lname, AVG(released_year)
FROM books
GROUP BY author_lname, author_fname;

-- Find the full name of the author who wrote the longest book
#1
SELECT
	CONCAT(author_fname, ' ', author_lname)
FROM books ORDER BY pages DESC LIMIT 1;

#2
SELECT CONCAT(author_fname, ' ', author_lname) FROM books
WHERE pages = (SELECT Max(pages) FROM books);

-- year, number of books released that year, average pages 

SELECT
	released_year AS 'year',
	COUNT(*) AS '# books',
	AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year;