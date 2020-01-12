-- Prints title and stock quantity that has 4 chracters for stock quantity
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
 
-- Prints title and stock quantity that has 2 chracters for stock quantity
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';
 
-- Print titles where the title has a percent sign on it denoted by \%
SELECT title FROM books WHERE title LIKE '%\%%'

-- Print titles where the title has an underscore on it denoted by \_
SELECT title FROM books WHERE title LIKE '%\_%'