SELECT author_fname AS 'First Name', author_lname AS 'Last Name',
	CONCAT(author_fname, ' ', author_lname) AS 'Full Name'
FROM books;