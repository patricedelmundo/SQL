-- Prints unique author full names after variables are concatenated

SELECT DISTINCT
	CONCAT(author_fname, ' ', author_lname) AS 'All Authors'
FROM books;


-- Prints 2 columns for unique first name and last name
SELECT DISTINCT author_fname, author_lname FROM books;