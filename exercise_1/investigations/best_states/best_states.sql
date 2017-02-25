SELECT State,
RANK() OVER (ORDER BY avg_total_score DESC)
FROM state_transformed
ORDER BY avg_total_score DESC
LIMIT 10;