-- SQL Practice Question (SAFE MODE - DELETE)
-- You are given a table:
-- student(id, name, marks)
-- Tasks:
-- 1. Insert 2 students:
-- (1, "Hasan", 88)
-- (2, "Siam", 75)
-- 2. Turn SAFE UPDATE mode ON and write a DELETE query
-- to remove all students whose marks are less than or equal to 80
-- 3. Turn SAFE UPDATE mode OFF and run the same DELETE query again
-- Create database
CREATE DATABASE problem;
USE problem;

-- Create student table
CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(20),
    marks INT NOT NULL
);

-- Insert sample data
INSERT INTO student (id, name, marks)
VALUES
(1, "Rahim", 85),
(2, "Karim", 92);

-- Enable SAFE UPDATE mode
SET SQL_SAFE_UPDATES = 1;

-- Try delete (will NOT delete any row because condition doesn't match)
DELETE FROM student
WHERE marks <= 80;

-- Disable SAFE UPDATE mode
SET SQL_SAFE_UPDATES = 0;

-- Now delete again (still no matching data, so 0 rows affected)
DELETE FROM student
WHERE marks <= 80;
