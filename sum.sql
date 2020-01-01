-- Sums all the pages of books in the table
SELECT SUM(pages)
FROM books;

-- sums all the years (weird)
SELECT SUM(released_year) FROM books;

-- sums all pages each author has written
SELECT author_fname,
       author_lname,
       Sum(pages)
FROM books
GROUP BY
    author_lname,
    author_fname;