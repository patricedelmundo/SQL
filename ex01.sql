/* SIMPLE TABLE CONTRAINTS EXERICE

All fields but middle_name set to required
Default value of current_status is employed
id incremements by 1, and is unique (primary key)

*/

CREATE TABLE employees
(
	id INT AUTO_INCREMENT NOT NULL ,
	last_name VARCHAR(20) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	middle_name VARCHAR(20),
	age INT NOT NULL,
	current_status VARCHAR(20) NOT NULL DEFAULT 'employed',
	PRIMARY KEY (id)
);
