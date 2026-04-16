--Big population or big area
SELECT name,population,area
FROM World
WHERE population>=25000000
OR area>= 3000000;
