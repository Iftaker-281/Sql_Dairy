--In the student table:
--a) Change the name of column city to location.
--b) Delete all students who scored marks less than 75.
--c) Remove the column grade from the table

CREATE DATABASE practice;
USE practice;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(20),
marks INT NOT NULL,
grade VARCHAR(5)
);

ALTER TABLE student 
CHANGE name full_name VARCHAR (20);

INSERT INTO student(id,full_name,marks,grade)
VALUES 
(101,"Tahmid",87,'A+'),
(102,"SAami",90,'A+'),
(103,"Shakib",91,'A+'),
(104,"Rakib",83,'A+'),
(105,"Sahan",94,'A+');
SELECT * FROM student;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM student 
WHERE marks <90;

ALTER TABLE student 
DROP COLUMN grade ;
