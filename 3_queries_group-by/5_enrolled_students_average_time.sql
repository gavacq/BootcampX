SELECT s.name as name, AVG(asb.duration) as average_assignment_duration
FROM students as s
  JOIN assignment_submissions as asb ON s.id = asb.student_id
  WHERE s.end_date is NULL
  GROUP by s.name
  ORDER BY average_assignment_duration DESC
