--Write a solution to report the movies with an odd-numbered ID and a description that is not "boring"
--Return the result table ordered by rating in descending order.
SELECT c.id,c.movie,c.description,c.rating
FROM Cinema AS c
WHERE c.id %2 = 1
OR c.description != "boring"
GROUP BY c.id
ORDER BY rating asc;
