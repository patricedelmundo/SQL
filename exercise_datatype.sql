-- create a table with an item name, price less than a million, and a quantity 

CREATE TABLE inventory(
    item_name varchar(20),
    price decimal(8,2),
    quantity int
);

-- Print date and time right now
SELECT NOW();

-- Print just the time right now
SELECT CURTIME();

-- Print today's date
SELECT CURDATE();

-- Print the number corresponding to the day of the week
SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());

-- Print tomorrow's date's number
SELECT DATE_FORMAT(NOW(), '%w') + 1;
 
-- Print the day today 
SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');

-- Print the current date in MM/DD/YYYY
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

CREATE TABLE tweets(
    tweet char(40),
    username char(10),
    tweeted_on TIMESTAMP DEFAULT NOW()
 );