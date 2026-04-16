-- Problem: Find valid users
-- Condition: author_id = viewer_id
SELECT name,population,area
FROM World
WHERE population>=25000000
OR area>= 3000000;
