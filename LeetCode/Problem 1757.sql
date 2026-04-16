-- Only select product_id from Products table
-- Condition 1: low_fats must be 'Y'
-- Condition 2: recyclable must be 'Y'
-- Both conditions must be true (AND used)

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y';
