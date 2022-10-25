SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM teachers
INNER JOIN assistance_requests ON teachers.id = teacher_id
INNER JOIN students ON students.id = student_id
INNER JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;