/* CRUD EXERCISE 1
Created a table of shirts, read, and updated some values here and there.
*/

--reads current database
SELECT database();

--create database
CREATE DATABASE shirts_db;

-- building a table inside the shirts database
use shirts_db;
 
SELECT database();

-- table where shirt_id is the unique value and the only required field
CREATE TABLE shirts
  (
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(100),
    last_worn INT,
    PRIMARY KEY(shirt_id)
  );

-- describes the table created
DESC shirts;

-- bulk insert of data into the shirts table
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

-- show all columns from shirts table
SELECT * FROM shirts;

-- oops, forgot to add this shirt
INSERT INTO shirts(color, article, shirt_size, last_worn) 
VALUES('purple', 'polo shirt', 'medium', 50);

-- Let me see that table again!
SELECT * FROM shirts;
