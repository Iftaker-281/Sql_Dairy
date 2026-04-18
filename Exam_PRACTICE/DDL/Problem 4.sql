-- Part A: DDL
-- Q1: Create a database named school_db and use it
-- Q2: Create a table 'student'
-- Columns: id (PK), name (VARCHAR 50), marks (INT)
-- Q3: Add a new column 'age INT' to student table
-- Q4: Modify 'name' column to VARCHAR(100)
-- Q5: Drop the 'marks' column
-- Q6: Rename table 'student' to 'students'
-- Q7: Delete all data from table (keep struct
-- Part B: DML
-- Q8: Insert data into 'students'
-- (1, 'Rahim', 20)
-- (2, 'Karim', 22)
-- (3, 'Sakib', 19)
-- Q9: Show all records
-- Q10: Show students with age > 20
-- Q11: Update Rahim's age to 21
-- Q12: Delete record where id = 3
-- Part C: Bonus
-- Q13: Add column 'city VARCHAR(50)'
-- Q14: Update city = 'Dhaka' where name = 'Karim'
-- Q15: Select only name and age
CREATE DATABASE school_bd;
USE school_bd;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
marks INT
);

ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
MODIFY COLUMN name VARCHAR(100);

ALTER TABLE student
DROP COLUMN marks;

ALTER TABLE student
RENAME TO students;

TRUNCATE TABLE students;

INSERT INTO students(id,name,age)
VALUES 
(1, 'Rahim', 20),
(2, 'Karim', 22),
(3, 'Sakib', 19);

SELECT * FROM students;

SELECT * FROM students
WHERE age>20;

SET SQL_SAFE_UPDATES = 0;

UPDATE students
SET age = 21
WHERE name = "Rahim";

DELETE FROM students
WHERE id = 3;

ALTER TABLE students
ADD COLUMN city VARCHAR(50);

SELECT name,age
FROM students;
