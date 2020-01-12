-- Find the 5 oldest users
SELECT
    id,
    username,
    created_at
FROM users
    ORDER BY created_at ASC LIMIT 5;

-- Find which day of the week has the most number of people registered
SELECT
    COUNT(created_at) AS '# of users',
    DAYNAME(created_at) AS DAY
FROM users
    GROUP BY DAY
    ORDER BY COUNT(created_at) DESC LIMIT 1;
       
-- find which users have not posted a photo
SELECT
    username AS 'inactive users'
FROM users  
LEFT JOIN photos
    ON users.id = photos.user_id
    WHERE photos.id IS NULL;
    
-- find the person with the most likes for a photo
SELECT
    username,
    photos.user_id AS 'USER ID',
    photos.id AS 'PHOTO ID',
    COUNT(likes.user_id) AS 'LIKES'
FROM likes
    INNER JOIN photos
        ON photos.id = likes.photo_id
    INNER JOIN users
        ON users.id = photos.user_id
GROUP BY photos.id
ORDER BY COUNT(likes.user_id) DESC LIMIT 3;

-- Checking my work
SELECT
    photo_id,
    COUNT(user_id)
FROM likes
GROUP BY photo_id
ORDER BY COUNT(user_id) DESC LIMIT 3;

-- How many times does the average user post?
SELECT (SELECT Count(*) FROM photos) / (SELECT Count(*) FROM users) AS avg; 

-- top 5 commonly used hashtags
SELECT
    tag_name AS 'HASHTAG',
    COUNT(tag_id) AS 'TIMES USED'
FROM photo_tags
    INNER JOIN tags
        ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY COUNT(tag_id) DESC LIMIT 5;

-- find users who have liked every single photo
SELECT username, 
       Count(*) AS LIKES 
FROM   users 
       INNER JOIN likes 
               ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING LIKES = (SELECT Count(*) FROM photos); 

-- find users who have never commented on a photo
SELECT
    username AS 'Silent Users'
FROM users
LEFT JOIN comments
    ON users.id = comments.user_id
    WHERE comments.id IS NULL;
    
-- Find the percentage of our users who have either never commented on a photo or have commented on every photo