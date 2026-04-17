--We need to show the unique_id of each employee.
--If an employee does not have a unique_id, we will show NULL.
-- For this, we use LEFT JOIN.

--Employees table ke left side e rakha hoy
--EmployeeUNI table ke join kora hoy id diye
--Jader match pawa jabe na, tader unique_id automatic NULL hobe--

SELECT eu.unique_id,em.name 
FROM Employees  em
LEFT JOIN EmployeeUNI  eu
ON eu.id = em.id;
