-- Prints average release year for all books
SELECT AVG(released_year) 
FROM books;

-- Prints average number of pages for all books
SELECT AVG(pages) 
FROM books;

-- Prints average number of quantity for books released on the same year
SELECT AVG(stock_quantity) 
FROM books 
GROUP BY released_year;

-- Prints the release year and average quantity of books released on the same year
SELECT released_year, AVG(stock_quantity) 
FROM books 
GROUP BY released_year;

-- Prints author's first and last name, and the average length of their books
SELECT author_fname, author_lname, AVG(pages) FROM books
GROUP BY author_lname, author_fname;