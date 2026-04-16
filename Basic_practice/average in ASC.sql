CREATE DATABASE college;
USE college;

CREATE TABLE student(
 rollno INT PRIMARY KEY,
 name VARCHAR(50),
 marks INT NOT NULL,
 grade VARCHAR(1),
 area VARCHAR(20)
 );
 ALTER TABLE student DROP COLUMN city;
 ALTER TABLE student ADD COLUMN area VARCHAR(20);
 ALTER TABLE student MODIFY grade VARCHAR(5);
 
 INSERT INTO student (rollno,name,marks,grade,area)
 VALUES
 (101,"Tahmid",97,"A+","Silam"),
  (102,"Tanisha",85,"A-","Bianibazar"),
   (103,"Mahfuj",90,"A+","Bianibazarr"),
    (104,"Sayeed",81,"A-","Lamapara"),
     (106,"Mahin",99,"A+","Sylhet");

SELECT area,AVG(marks)
FROM student 
GROUP BY area
ORDER BY area;
