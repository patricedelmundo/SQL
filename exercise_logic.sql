-- Print books written before 1980
SELECT *
    FROM books
    WHERE released_year <= 1980;
    
-- Print books written by Eggers or Chabon
SELECT *
    FROM books
    WHERE author_lname = 'Eggers' || author_lname = 'Chabon';
    
-- Print all books written by Lahiri published after 2000
SELECT *
    FROM books
    WHERE author_lname = 'Lahiri'
    && released_year > 2000;
    
-- Print all books with a page count between 100 and 200 
SELECT *
    FROM books
    WHERE pages BETWEEN 100 AND 200;
    
-- Print all books where the author's last name starts with an S or a C
SELECT *
    FROM books
    WHERE author_lname LIKE 'S%' OR author_lname LIKE 'C%';
    
-- CASE: If title has stories, print 'Short Stories', If Just Kids and A Heartbreaking..., print 'Memoirs', anything else is 'Novels'

SELECT title, author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title IN ('Just Kids','A Heartbreaking Work of Staggering Genius') THEN 'Memoirs'
        ELSE 'Novels'
    END AS TYPE
FROM books;

-- Print title, last name, quanity+book(s) as COUNT

SELECT author_fname, author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books
GROUP BY author_lname, author_fname;