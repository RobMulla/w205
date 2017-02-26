SELECT State,
RANK() OVER (ORDER BY avg_care_score DESC),
avg_care_score,
hospitals_in_state
FROM state_transformed
ORDER BY avg_care_score DESC
LIMIT 10;