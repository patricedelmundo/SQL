-- Books released before 2000
SELECT title, released_year FROM books
WHERE released_year < 2000;
 
-- Books released on or before 2000
SELECT title, released_year FROM books
WHERE released_year <= 2000;