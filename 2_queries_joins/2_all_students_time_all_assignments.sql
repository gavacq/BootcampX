SELECT SUM(asub.duration) AS total_time
FROM assignment_submissions as asub
  JOIN students as s ON asub.student_id = s.id
  JOIN cohorts as c ON c.id = s.cohort_id
  WHERE c.name = 'FEB12'
