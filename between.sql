-- Between operator the long way
SELECT title, released_year FROM books WHERE released_year >= 2004 && released_year <= 2015;
 
-- NOT inclusive
SELECT title, released_year FROM books 
WHERE released_year BETWEEN 2004 AND 2015;
 
-- Complement of above
SELECT title, released_year FROM books 
WHERE released_year NOT BETWEEN 2004 AND 2015;

-- Use for dates because this can compare different data types
SELECT CAST('2017-05-02' AS DATETIME);
 
show databases;
 
use people;
 
-- Calculating datetime values with between
SELECT name, birthdt FROM people WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01';


-- Best practice
SELECT 
    name, 
    birthdt 
FROM people
WHERE 
    birthdt BETWEEN CAST('1980-01-01' AS DATETIME)
    AND CAST('2000-01-01' AS DATETIME);