--Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits
--LEFT JOIN → সব visits রাখে
--jeগুলার transaction নাই → t.visit_id = NULL হয়
--WHERE t.visit_id IS NULL → শুধু no transaction visits filter করে
--তারপর count কর
# Write your MySQL query statement below
SELECT v.customer_id,COUNT(customer_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY v.customer_id;
