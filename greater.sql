SELECT title, released_year FROM books ORDER BY released_year;


-- Books released after 2000
SELECT title, released_year FROM books 
WHERE released_year > 2000 ORDER BY released_year;

-- Books released on or after 2000
SELECT title, released_year FROM books 
WHERE released_year >= 2000 ORDER BY released_year;
 
-- Books where the quantity is greater than or equal to 100 
SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100;