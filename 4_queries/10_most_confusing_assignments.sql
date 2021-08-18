SELECT a.id AS id, a.name AS name, a.day AS day, a.chapter AS chapter, COUNT(asr) AS total_requests
FROM assistance_requests AS asr
  JOIN assignments AS a ON a.id = asr.assignment_id
  GROUP BY a.id
  ORDER BY total_requests DESC