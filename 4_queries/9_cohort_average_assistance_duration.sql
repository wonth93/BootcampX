SELECT avg(total_duration) AS average_total_duration
FROM (
  SELECT cohorts.name AS cohort, sum(completed_at - started_at) AS total_duration
  FROM assistance_requests
  INNER JOIN students ON students.id = student_id
  INNER JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
) AS total_duration;