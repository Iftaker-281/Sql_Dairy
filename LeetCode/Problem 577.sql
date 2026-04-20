-- Problem: Employee Bonus
-- Given two tables:
-- 1. Employee(empId, name, supervisor, salary)
-- 2. Bonus(empId, bonus)
-- Task:
-- Find the name and bonus of employees who:
-- ✔ Have bonus less than 1000
-- ✔ OR did not receive any bonus
-- Important points:
-- • Some employees may NOT have a bonus (missing in Bonus table)
-- • Those employees must STILL be included in the result
-- • Return result in any order
-- Output:
-- name | bonus

SELECT e.name,bonus
FROM Employee e
LEFT JOIN Bonus B
ON e.empId= B.empId
WHERE B.bonus<1000
OR B.bonus IS NULL;
