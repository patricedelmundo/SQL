-- Prints first 3 book titles
SELECT title FROM books LIMIT 3;
 
-- Prints first record from the table
SELECT * FROM books LIMIT 1;
 
-- Prints title and year of first 5 books ordered by year in descending order
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 5;
 
-- Prints the same thing, note that it means print 5 records starting from the 0th row
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,5;
 
-- Prints second to the 4th row
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 1,3;
 
-- Print one record starting from the 11th row
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 10,1;
 
-- Choose an arbitrary number to print all the other rows in the table
SELECT * FROM tbl LIMIT 95,18446744073709551615;