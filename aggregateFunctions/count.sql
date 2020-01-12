-- Conts all the books in the table
SELECT COUNT(*) FROM books;

-- Counts all first names, even duplicates
SELECT COUNT(author_fname) FROM books;

-- Counts unique first name values
SELECT COUNT(DISTINCT author_fname) FROM books;

-- Counts unique last name values
SELECT COUNT(DISTINCT author_lname) FROM books;

-- Counts distinct author FULL names
SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;

-- Prints all books with 'the' on the title
SELECT title FROM books WHERE title LIKE '%the%';

-- Counts number of books that have 'the' on the title
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';