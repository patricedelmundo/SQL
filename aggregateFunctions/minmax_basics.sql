-- Prints earliest year a book was released
SELECT MIN(released_year) 
FROM books;

-- Prints shortest book
SELECT MIN(pages) FROM books;

-- Prints longest book
SELECT MAX(pages) 
FROM books;

-- Prints latest year
SELECT MAX(released_year) 
FROM books;

-- Prints longest number of pages but prints the first book in the table
SELECT MAX(pages), title
FROM books;