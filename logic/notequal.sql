-- Books relesed on 2017
SELECT title FROM books WHERE released_year = 2017;

-- Books not relesed on 2017
SELECT title FROM books WHERE released_year != 2017;
 
-- Books written by an author with the last name Harris 
SELECT title, author_lname FROM books WHERE author_lname = 'Harris';

-- Books written by an author with the last name other than Harris 
SELECT title, author_lname FROM books WHERE author_lname != 'Harris';