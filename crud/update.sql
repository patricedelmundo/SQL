/* CRUD EXERCISE 2

Created a table of shirts, read, and updated some values here and there.

*/

-- Show all columns for polo shirts
SELECT * FROM shirts WHERE article='polo shirt';
 
-- Update shirt size to large for all polo shirts
UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';

-- Show all columns for polo shirts
SELECT * FROM shirts WHERE article='polo shirt';

-- Show all columns for shirts
SELECT * FROM shirts;

-- Show all shirts last worn 15 days ago
SELECT * FROM shirts WHERE last_worn=15;

-- Then set them back to 0
UPDATE shirts SET last_worn=0 WHERE last_worn=15;

SELECT * FROM shirts WHERE last_worn=15;
 
SELECT * FROM shirts WHERE last_worn=0;
 
SELECT * FROM shirts WHERE color='white';

-- Update white shirts to off white and XS
UPDATE shirts SET color='off white', shirt_size='XS' WHERE color='white';
 
SELECT * FROM shirts WHERE color='white';
 
SELECT * FROM shirts WHERE color='off white';
 
SELECT * FROM shirts;
