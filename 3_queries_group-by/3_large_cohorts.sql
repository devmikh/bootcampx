SELECT cohorts.name AS cohort_name, COUNT(*) AS student_count
FROM cohorts
JOIN students ON cohort_id = cohorts.id
GROUP BY cohort_name
HAVING COUNT(*) >= 18
ORDER BY COUNT(*);