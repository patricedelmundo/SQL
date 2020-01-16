-- 
SELECT title, author_lname FROM books;

-- Prints megarows and accounts for the second value but doesn't print the second value
SELECT title, author_lname FROM books
GROUP BY author_lname;

--Prints the number of books per author
SELECT author_lname, COUNT(*) FROM books 
GROUP BY author_lname;
 
-- Prints title and name of author
SELECT title, author_fname, author_lname FROM books;

-- Prints a preview of mega rows (you don't see the group)
SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;

-- Counts the rows per last name
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- Counts number of books released per year
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- Concatenated version of table above
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;