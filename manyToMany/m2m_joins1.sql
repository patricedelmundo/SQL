SELECT title,rating FROM series
JOIN reviews
    on series.id=reviews.series_id;