-- Prints titles of books that have 'stories' in it

SELECT title FROM books WHERE title LIKE '%stories%';

-- Print the longest book in the table

SELECT
	title, pages 
FROM books
ORDER BY pages DESC
LIMIT 1;

-- Print 'title - year' and arrange by newest to oldest and limit to 3

SELECT
	CONCAT(title, ' - ', released_year) AS summary
FROM books
ORDER BY released_year DESC
LIMIT 3;

-- Print all books where the authors that have a space in their last name

SELECT title, author_lname FROM books WHERE author_lname like '% %';

-- Print title, year, and quanitity of the 3 books with the lowest stock
SELECT
	title, released_year, stock_quantity
FROM books
ORDER BY stock_quantity ASC
LIMIT 3;

-- Print title and author's last name sorted by author's last name then by title
SELECT
	title, author_lname
FROM books
ORDER BY author_lname, title;

-- print a table 'yell' with 'MY FAVORITE AUTHOR IS FIRST NAME LAST NAME!' sorted by last name
SELECT
	CONCAT('MY FAVORITE AUTHOR IS ', UPPER(author_fname), ' ', UPPER(author_lname), '!') AS 'yell'
FROM books
ORDER BY author_lname;

-- prints table above with no duplicates
SELECT DISTINCT
	CONCAT('MY FAVORITE AUTHOR IS ', UPPER(author_fname), ' ', UPPER(author_lname), '!') AS 'yell'
FROM books
ORDER BY author_lname;