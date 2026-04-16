--referred by any customer with id != 2.
--not referred by any customer.
-- This query selects customers whose referee_id is NULL or not equal to 2
SELECT name
FROM Customer
WHERE referee_id IS NULL 
OR referee_id != 2;
