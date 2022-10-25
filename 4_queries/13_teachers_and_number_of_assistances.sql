SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort, count(assistance_requests) AS total_assistances 
FROM teachers
INNER JOIN assistance_requests ON teachers.id = teacher_id
INNER JOIN students ON students.id = student_id
INNER JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;