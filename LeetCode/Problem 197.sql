--Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
--Compared istest thta means we using Slef JOIN
SELECT a.id
FROM Weather AS a
JOIN Weather AS b
ON DATEDIFF(a.recordDate,b.recordDate) = 1
WHERE a.temperature>b.temperature;
