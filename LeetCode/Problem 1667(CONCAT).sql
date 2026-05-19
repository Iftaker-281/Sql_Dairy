-- given a table Users.
-- need to:
--Make the first letter uppercase
--First letter: UPPER(LEFT(name,1)) → makes first letter capital
--Rest letters: LOWER(SUBSTRING(name,2)) → makes everything lowercase
--Join both: CONCAT(...) → combines them
--Make the rest lowercase
--Sort by user_id
SELECT
    user_id, CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2)) ) AS name
FROM Users
ORDER BY user_id;
