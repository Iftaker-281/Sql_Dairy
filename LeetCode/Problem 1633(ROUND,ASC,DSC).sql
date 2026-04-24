--Write a solution to find the percentage of the users registered in each contest rounded to two decimals.
--Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.
--All the users registered in contests 208, 209, and 210. The percentage is 100% and we sort them in the answer table by contest_id in ascending order.
--Alice and Alex registered in contest 215 and the percentage is ((2/3) * 100) = 66.67%
--Bob registered in contest 207 and the percentage is ((1/3) * 100) = 33.33%

SELECT contest_id,
ROUND(COUNT(DISTINCT r.user_id)*100 / (SELECT COUNT(*) FROM Users),2)AS percentage
FROM Users AS u
RIGHT JOIN Register AS r
ON u.user_id = r.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC,r.contest_id ASC;
