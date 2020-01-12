-- Prints record with author as Eggers
SELECT title, author_lname, released_year FROM books
WHERE author_lname='Eggers';

-- Prints records with released year after 2010
SELECT title, author_lname, released_year FROM books
WHERE released_year > 2010;

-- Prints records with books written by Eggers and were released after 2010
SELECT  
    title, 
    author_lname, 
    released_year FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010;

SELECT 1 < 5 && 7 = 9;
-- false
 
SELECT -10 > -20 && 0 <= 0;
-- true
 
SELECT -40 <= 0 AND 10 > 40;
--false
 
SELECT 54 <= 54 && 'a' = 'A';
-- true

-- Select all columns from books where the author is Eggers, released after 2010, and title says 'novel'
SELECT * 
FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010 
    AND title LIKE '%novel%';