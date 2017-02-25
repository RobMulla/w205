DROP TABLE hospital_ranked;

CREATE TABLE hospital_ranked AS

SELECT 
Provider_Number,
Hospital_Name,
State,
RANK() OVER (ORDER BY Process_Score DESC) process_rank,
RANK() OVER (ORDER BY Outcomes_Score DESC) outcomes_rank,
RANK() OVER (ORDER BY Care_Score DESC) care_rank,
RANK() OVER (ORDER BY Safety_Score DESC) safety_rank,
RANK() OVER (ORDER BY Cost_Reduction_Score DESC) cost_rank,
RANK() OVER (ORDER BY Total_Score DESC) overall_rank

FROM hospital_transformed

ORDER BY overall_rank ASC;
