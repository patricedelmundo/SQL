-- Books that have a W in it
SELECT title FROM books WHERE title LIKE '%W%';

-- Books that start with W
SELECT title FROM books WHERE title LIKE 'W%';

-- Books that don't start with W 
SELECT title FROM books WHERE title NOT LIKE 'W%';