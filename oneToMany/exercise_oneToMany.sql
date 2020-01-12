-- Create a table for students with an auto increment ID and a first name
CREATE TABLE students(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(20)
);

-- Create a table for papers where student id is a foreign key
CREATE TABLE papers(
    title varchar(50),
    grade INT,
    student_id INT,
    FOREIGN KEY(student_id) REFERENCES students(id) 
);

-- Data for the table
INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

-- Print grades of students who submitted papers
SELECT first_name, title, grade
FROM students, papers
    WHERE students.id = papers.student_id
ORDER BY grade DESC;

-- Print the students and papers, including students who didn't submit papers
SELECT 
    first_name, 
    title, 
    grade 
FROM papers
RIGHT JOIN students
    ON students.id = papers.student_id;
    
-- Same table as above except null values for papers become 'MISSING' and grade becomes 0
SELECT 
    first_name, 
    IFNULL(title, 'MISSING') AS 'title',
    IFNULL(grade, '0') AS 'grade'
FROM papers
RIGHT JOIN students
    ON students.id = papers.student_id;
   
-- Print the first name and average grade of all students in descending order    
SELECT 
    first_name, 
    IFNULL(AVG(grade), 0) AS average
FROM papers
RIGHT JOIN students
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;

-- Print table above and inclue a column saying if students is passing or failing based on a threshold of 75
SELECT 
    first_name, 
    IFNULL(AVG(grade), 0) AS average,
    CASE 
        WHEN (AVG(grade)) BETWEEN 74 AND 100 THEN 'PASSING'
        ELSE 'FAILING'
    END AS passing_status
FROM papers
RIGHT JOIN students
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;