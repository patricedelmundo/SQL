-- table with title of the series, rating from a reviewer, and reviewer's first and last name

SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM series
    INNER JOIN reviews
        ON series.id = reviews.series_id
    INNER JOIN reviewers
        ON reviewers.id = reviews.reviewer_id
ORDER BY title;
        