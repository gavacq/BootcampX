SELECT day, COUNT(*) AS num_assignments
FROM assignments
GROUP BY day
ORDER BY day;