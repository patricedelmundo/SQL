-- Use a subquery to find the book with the least number of pages
SELECT * FROM books 
WHERE pages = (SELECT Min(pages) 
                FROM books); 
-- Use a subquery to find the book with the most number of pages
SELECT title, pages FROM books 
WHERE pages = (SELECT Max(pages) 
                FROM books); 
				
-- Prints the title of page with the least number of pages
SELECT title, pages FROM books 
WHERE pages = (SELECT Min(pages) 
                FROM books); 
-- Fastest way to do this is by using order by and limiting it to 1 book
SELECT * FROM books 
ORDER BY pages ASC LIMIT 1;