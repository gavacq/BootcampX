SELECT t.name AS teacher, s.name AS student, a.name AS assignment, (asr.completed_at - asr.started_at) AS duration
FROM assistance_requests AS asr
  JOIN teachers AS t ON asr.teacher_id = t.id
  JOIN students as s ON asr.student_id = s.id
  JOIN assignments as a ON asr.assignment_id = a.id
  ORDER BY duration
