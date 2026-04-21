-- Problem: Managers with at Least 5 Direct Reports
-- Table:
-- Employee(id, name, department, managerId)
-- Goal:
-- যেসব manager এর under এ at least 5 direct employees আছে তাদের name বের করা
-- Important Logic:
-- • managerId → employee কে manager এর সাথে connect করে
-- • Same table → self join করতে হবে
-- • One manager → multiple employees (duplicate rows আসবে)
-- Steps:
-- 1. Self JOIN → manager (e) + employee (b)
-- 2. e.id = b.managerId → relation connect
-- 3. GROUP BY → same manager একত্র করা
-- 4. COUNT → কয়জন report করছে
-- 5. HAVING ≥ 5 → condition apply
SELECT e.name
FROM Employee AS e
JOIN Employee AS b
ON e.id= b.managerId
GROUP BY e.id,e.name
HAVING COUNT(b.id)>=5;
