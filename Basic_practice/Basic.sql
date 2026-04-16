CREATE DATABASE college;
USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(2),
city VARCHAR(20)
);

INSERT INTO student (rollno,name,marks,grade,city)
VALUES 
(101,"Baten",34,"A","Syhlet"),
(102,"Katen",32,"A","Syhlet"),
(103,"Rahman",30,"A","Syhlet"),
(106,"Sahin",39,"A","Syhlet");

SELECT * FROM student;
