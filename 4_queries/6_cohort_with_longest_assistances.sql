SELECT cohorts.name AS name, avg(completed_at - started_at) AS average_assistance_time
FROM assistance_requests
INNER JOIN students ON students.id = student_id
INNER JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
FETCH FIRST 1 ROWS ONLY;