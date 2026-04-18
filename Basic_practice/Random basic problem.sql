-- Create database
CREATE DATABASE problem1;
USE problem1;

-- Create student table
CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(20),
    marks INT
);

-- Add new column age
ALTER TABLE student 
ADD COLUMN age INT;

-- Drop marks column
ALTER TABLE student
DROP COLUMN marks;

-- Modify name column size
ALTER TABLE student
MODIFY COLUMN name VARCHAR(100);

-- Remove all data from table
TRUNCATE TABLE student;

-- Rename table
ALTER TABLE student 
RENAME TO students;

-- Show data
SELECT * FROM students;
