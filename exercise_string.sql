-- Reverses string and then all caps
SELECT UPPER(REVERSE('Why does my cat look at me with so much hatred?'));

-- Replaces spaces with arrows
SELECT REPLACE(title, ' ', '->') AS 'title' from books ;

-- Prints 2 columns, first name and reverse of first name
SELECT author_fname AS forwards, REVERSE(author_fname) AS backwards FROM books;

-- Prints concatenated first name and last name with a space and then all caps
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;

-- Concetenates title with 'was released in' and the year, then printed as 'blurb'
SELECT
 	CONCAT(title, ' was released in ', released_year) AS blurb from books;

-- Prints 2 columns, title and character length
SELECT title, CHAR_LENGTH(title) as 'character count' FROM books;

-- First column: Prints first 10 characters concatenated with '...' as 'short title'
-- Second column: Prints author's last name and first name concatenated with ',' as 'author'
-- Third column: Prints the quantity concatenated with ' in stock' as 'quantity'

SELECT
	CONCAT(SUBSTRING(title, 1,10), '...') AS 'title',
	CONCAT(author_lname,',',author_fname) AS 'author',
	CONCAT(stock_quantity, ' in stock') AS 'quantity'
	FROM books
	
	WHERE title LIKE 'A%'; -- Only prints book titles starting with an A
