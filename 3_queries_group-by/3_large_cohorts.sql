SELECT c.name as name, COUNT(s.*) as num_students
FROM cohorts as c
  JOIN students as s ON c.id = s.cohort_id
  GROUP BY c.name
  HAVING COUNT(s.*) > 18
  ORDER BY COUNT(s.*)