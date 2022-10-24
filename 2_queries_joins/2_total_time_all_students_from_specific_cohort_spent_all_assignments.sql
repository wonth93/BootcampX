SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
INNER JOIN students ON student_id = students.id
INNER JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';