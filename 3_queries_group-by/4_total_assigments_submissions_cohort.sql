SELECT c.name as name, COUNT(asb.*) as total_submissions
FROM cohorts as c
  JOIN students as s ON c.id = s.cohort_id
  JOIN assignment_submissions as asb ON asb.student_id = s.id
  GROUP BY c.name
  ORDER BY total_submissions DESC