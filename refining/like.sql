-- Find an author where the first name has the letters 'da' in it by using wildcards
SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
 
-- Find an author where the first name starts with 'da'
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';

-- Search books titled 'the'
SELECT title FROM books WHERE title LIKE 'the';

-- Search books that ends with 'the'
SELECT title FROM books WHERE  title LIKE '%the';

-- Search books that has 'the' in the title
SELECT title FROM books WHERE title LIKE '%the%';