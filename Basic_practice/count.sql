CREATE DATABASE IF  NOT EXISTS payment_method;
USE payment_method;

CREATE TABLE payment(
customer_id INT PRIMARY KEY,
customer VARCHAR(30),
mode VARCHAR(25),
city VARCHAR(20)
);

INSERT INTO payment (customer_id,customer,mode,city)
VALUES 
(101,"Tahmid","Netbanking","Sylhet"),
(102,"Mahfuj","Credit card","Miami"),
(103,"Sayed","Credit card","Portland"),
(104,"Mahin","Netbanking","Denver"),
(105,"Tanisha","Credit card","New ornals"),
(106,"Pushpita","Debit card","Hetimganj"),
(107,"Meghla","Debit card","Asam"),
(108,"Oishi","Netbanking","Tripura"),
(109,"Tawhid","Netbanking","Malanchi"),
(110,"Joy","Credit card","Sylhet");

SELECT mode, COUNT(*)
FROM payment 
GROUP BY mode;
SHOW TABLES;
