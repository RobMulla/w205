DROP TABLE hospital_ranked;

CREATE TABLE hospital_ranked AS

SELECT 
Provider_Number,
Hospital_Name,
State,
round(Clinical_Care_score, 2) as Clinical_Care_score,
RANK() OVER (ORDER BY Process_Score DESC) AS process_rank,
RANK() OVER (ORDER BY Outcomes_Score DESC) AS outcomes_rank,
RANK() OVER (ORDER BY Experience_Score DESC) AS experience_rank,
RANK() OVER (ORDER BY Safety_Score DESC) AS safety_rank,
RANK() OVER (ORDER BY Cost_Reduction_Score DESC) AS cost_rank,
RANK() OVER (ORDER BY Total_Score DESC) AS overall_rank,
RANK() OVER (ORDER BY Clinical_Care_score DESC) AS care_rank

FROM hospital_transformed

ORDER BY care_rank ASC;
