SELECT day, COUNT(*) AS num_assignments
FROM assignments
GROUP BY day
HAVING COUNT(*) >= 10
ORDER BY day;