SELECT COUNT(ar.*) AS total_assistances, t.name AS name
FROM assistance_requests AS ar
  JOIN teachers AS t ON ar.teacher_id = t.id
  WHERE t.name = 'Waylon Boehm'
  GROUP BY name
