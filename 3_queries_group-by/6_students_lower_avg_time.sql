SELECT s.name as student, AVG(asb.duration) as average_assignment_duration, AVG(a.duration) as average_estimated_duration
FROM students as s
  JOIN assignment_submissions as asb ON s.id = asb.student_id
  JOIN assignments as a ON asb.assignment_id = a.id
  WHERE s.end_date is NULL
  GROUP BY student
  HAVING AVG(asb.duration) < AVG(a.duration)
  ORDER BY average_assignment_duration