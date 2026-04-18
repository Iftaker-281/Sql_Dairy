CREATE DATABASE college;
USE college;

-- teacher table
CREATE TABLE teacher(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(30)
);

ALTER TABLE teacher ADD salary INT;
ALTER TABLE teacher MODIFY subject VARCHAR(100);
ALTER TABLE teacher DROP COLUMN salary;

TRUNCATE TABLE teacher;
DROP TABLE teacher;

-- student table
CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

ALTER TABLE student DROP COLUMN age;
ALTER TABLE student RENAME TO pupil;

-- course table
CREATE TABLE course(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

ALTER TABLE course ADD duration INT;
DROP TABLE course;
