-- Problem: Students and Examinations
-- Given three tables:
-- 1. Students(student_id, student_name)
-- 2. Subjects(subject_name)
-- 3. Examinations(student_id, subject_name)
-- Task:
-- Find how many times EACH student attended EACH subject exam
-- Important points:
-- • Every student should be paired with EVERY subject (even if not attended)
-- • Examinations table may contain duplicates → count করতে হবে
-- • If কোনো exam attend না করে → count হবে 0
-- Output:
-- student_id | student_name | subject_name | attended_exams
-- Order:
-- Result must be sorted by student_id and subject_name


SELECT a.student_id,a.student_name,s.subject_name,COUNT(b.subject_name) AS attended_exams
FROM Students a
CROSS JOIN Subjects s
LEFT JOIN Examinations b
ON a.student_id = b.student_id
AND s.subject_name = b.subject_name
GROUP BY a.student_id,a.student_name,s.subject_name
ORDER BY a.student_id,s.subject_name;
