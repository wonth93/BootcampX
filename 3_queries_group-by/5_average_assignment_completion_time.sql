SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM assignment_submissions
INNER JOIN students ON student_id = students.id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY AVG(assignment_submissions.duration) DESC;