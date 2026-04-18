--You have a table:
--student(id, name, marks)
--Do the following:
--Insert 2 students:
--(1, "Rahim", 85)
--(2, "Karim", 92)
--Update marks of Rahim to 90
--Delete student whose id is 2

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(20),
marks INT NOT NULL
);

INSERT INTO student (id, name, marks)
VALUES
(1,"Rahim",85),
(2,"Karim",92);

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET marks = 90
WHERE name = "Rahim";

DELETE FROM student 
WHERE id = 2;
