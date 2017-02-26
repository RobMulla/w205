DROP TABLE hospital_transformed;

CREATE TABLE hospital_transformed AS

SELECT 
tps.Provider_Number,
tps.Hospital_Name,
tps.State,
cast(tps.Unweighted_Normalized_Clinical_Care__Process_Domain_Score as float) as Process_Score,
cast(tps.Unweighted_Normalized_Clinical_Care__Outcomes_Domain_Score as float) as Outcomes_Score,
cast(tps.Unweighted_Patient_and_Caregiver_Centered_Experience_of_Care_Care_Coordination_Domain_Score as float) as Experience_Score,	
cast(tps.Unweighted_Normalized_Safety_Domain_Score as float) as Safety_Score,
cast(tps.Unweighted_Normalized_Efficiency_and_Cost_Reduction_Domain_Score as float) as Cost_Reduction_Score,
cast(tps.Total_Performance_Score as float) as Total_Score,
cast(hospitals.Hospital_overall_rating as decimal(1,0)) as Overall_Rating,
-- Add new clinical care
(0.25*cast(tps.Unweighted_Normalized_Clinical_Care__Process_Domain_Score as float)) + (0.75*cast(tps.Unweighted_Normalized_Clinical_Care__Outcomes_Domain_Score as float)) as Clinical_Care_score

FROM tps INNER JOIN hospitals ON tps.Provider_Number = hospitals.Provider_ID
;