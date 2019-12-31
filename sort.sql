-- Prints distinct author first and last names ordered by last names in ascending order (A-Z)

SELECT DISTINCT author_fname, author_lname FROM books ORDER BY author_lname ASC;

-- Prints books titles ordered by titles in descending order (Z-A)
SELECT title FROM books ORDER BY title DESC;

-- Prints the table ordered by stock quantity
SELECT * FROM books ORDER BY stock_quantity

-- Prints 2 columns of author's first and last names ordered by last name then further arranged by first
SELECT author_fname, author_lname FROM books 
ORDER BY author_lname, author_fname;