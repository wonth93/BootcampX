SELECT count(assistance_requests.*) AS total_assistances, students.name
FROM students
INNER JOIN assistance_requests ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;