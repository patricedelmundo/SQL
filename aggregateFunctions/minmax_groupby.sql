-- Prints the values for the year each author published their first book
SELECT author_fname, 
       author_lname, 
       Min(released_year) 
FROM   books 
GROUP  BY author_lname, -- Filters last names first
          author_fname; -- Further filters first name to separate authors with the same last name

-- Prints the values for the author's longest book written
SELECT
  author_fname,
  author_lname,
  Max(pages)
FROM books
GROUP BY author_lname,
         author_fname;

--  Prettier table of above
SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
         author_fname;