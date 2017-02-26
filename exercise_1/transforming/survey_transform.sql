DROP TABLE survey_transform;

CREATE TABLE survey_transform AS

SELECT 
t.provider_number,
t.hospital_name,
cast(t.Unweighted_Normalized_Clinical_Care__Process_Domain_Score as float) as Process_Score,
cast(t.Unweighted_Normalized_Clinical_Care__Outcomes_Domain_Score as float) as Outcomes_Score,
cast(t.Unweighted_Patient_and_Caregiver_Centered_Experience_of_Care_Care_Coordination_Domain_Score as float) as Care_Score,	
cast(t.Unweighted_Normalized_Safety_Domain_Score as float) as Safety_Score,
cast(t.Unweighted_Normalized_Efficiency_and_Cost_Reduction_Domain_Score as float) as Cost_Reduction_Score,
cast(t.Total_Performance_Score as float) as Total_Score,
cast(s.Communication_with_Nurses_Performance_Rate as float) as nurse_rating,
cast(s.Communication_with_Doctors_Performance_Rate as float) as doctor_rating,
cast(s.Responsiveness_of_Hospital_Staff_Performance_Rate as float) as staff_rating,
cast(s.Pain_Management_Performance_Rate as float) as pain_rating,
cast(s.Communication_about_Medicines_Performance_Rate as float) as comm_about_meds_rating,
cast(s.Cleanliness_and_Quietness_of_Hospital_Environment_Performance_Rate as float) as environment_rating,
cast(s.Discharge_Information_Performance_Rate as float) as discharge_rating,
cast(s.Overall_Rating_of_Hospital_Performance_Rate as float) as overall_performance_rating


FROM surveys_responses s
INNER JOIN tps t ON t.provider_number = s.provider_number
;