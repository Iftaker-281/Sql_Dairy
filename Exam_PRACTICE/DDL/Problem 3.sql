-- Practice Question (DDL + DML Basic)
--Create a database named college_db
--Use the database
--Create a table named student with:
--id (INT, PRIMARY KEY)
--name (VARCHAR 50)
--marks (INT)
--Insert 3 students:
--(1, "Arafat", 82)
--(2, "Mehedi", 75)
--(3, "Ritu", 90)
--Add a new column named grade (VARCHAR 10)
--Update grade:
--marks >= 80 → "A"
--marks < 80 → "B"
--Delete student whose id is 2
--Rename table student to students
--Show all records from students table

CREATE DATABASE college_db;
USE college_db;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
marks INT 
);

INSERT INTO student(id,name,marks)
VALUES
(1, "Arafat", 82),
(2, "Mehedi", 75),
(3, "Ritu", 90);

ALTER TABLE student
ADD COLUMN grade VARCHAR(10);

UPDATE student 
SET grade = "A"
WHERE marks>=80;

UPDATE student 
SET grade = "B"
WHERE marks<80;

DELETE FROM student
WHERE id = 2;

ALTER TABLE student
RENAME TO students;

SELECT * FROM students;
