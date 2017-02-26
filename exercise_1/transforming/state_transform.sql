DROP TABLE state_transformed;

CREATE TABLE state_transformed AS
Select State, 
round(avg(Process_Score), 2) avg_process_score,
round(avg(Outcomes_Score), 2) avg_outcomes_score,
round(avg(Experience_Score), 2) avg_experience_score,
round(avg(Safety_Score), 2) avg_safety_score,
round(avg(Cost_Reduction_Score), 2) avg_cost_score,
round(avg(Total_Score), 2) avg_total_score,
round(avg(Clinical_Care_score), 2) avg_care_score,
count(state) hospitals_in_state

FROM hospital_transformed
GROUP BY state 
ORDER BY avg_care_score DESC
;