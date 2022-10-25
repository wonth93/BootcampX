SELECT count(assistance_requests.*) AS total_assistances, teachers.name
FROM teachers
INNER JOIN assistance_requests ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;