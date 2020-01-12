-- Long version of in statement using logical or
SELECT 
    title, 
    author_lname 
FROM books
WHERE author_lname='Carver' OR
      author_lname='Lahiri' OR
      author_lname='Smith';

-- In is just a set
SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
 
-- Books not released in the following years, not even one
SELECT title, released_year FROM books
WHERE released_year != 2000 AND
      released_year != 2002 AND
      released_year != 2004 AND
      released_year != 2006 AND
      released_year != 2008 AND
      released_year != 2010 AND
      released_year != 2012 AND
      released_year != 2014 AND
      released_year != 2016;

-- Set of AND statements
SELECT title, released_year FROM books
WHERE released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);

-- Books released on even years on or after 2000
SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year NOT IN 
(2000,2002,2004,2006,2008,2010,2012,2014,2016);

-- Even numbered years
SELECT title, released_year FROM books
WHERE released_year >= 2000 AND
released_year % 2 != 0;

-- Odd numbered years
SELECT title, released_year FROM books
WHERE released_year >= 2000 AND
released_year % 2 != 0 ORDER BY released_year;