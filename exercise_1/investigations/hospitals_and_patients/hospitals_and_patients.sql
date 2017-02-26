SELECT 

CONCAT('Process Score vs Nurse Rating = ', round(corr(Process_Score, nurse_rating), 4)) as process_nurse_corr,
CONCAT('Process Score vs Doctor Rating = ', round(corr(Process_Score, doctor_rating), 4)) as process_doctor_corr,
CONCAT('Process Score vs Staff Rating = ', round(corr(Process_Score, staff_rating), 4)) as process_staff_rating,
CONCAT('Process Score vs Pain Rating = ', round(corr(Process_Score, pain_rating), 4)) as process_pain_rating,
CONCAT('Process Score vs Meds Rating = ', round(corr(Process_Score, comm_about_meds_rating), 4)) as process_comm_about_meds_rating,
CONCAT('Process Score vs Enviornment Rating = ', round(corr(Process_Score, environment_rating), 4)) as process_environment_rating,
CONCAT('Process Score vs Discharge Rating = ', round(corr(Process_Score, discharge_rating), 4)) as process_discharge_rating,
CONCAT('Process Score vs Overall Rating = ', round(corr(Process_Score, overall_performance_rating), 4)) as process_overall_performance_rating,


CONCAT('Outcomes Score vs Nurse Rating = ', round(corr(Outcomes_Score, nurse_rating), 4)) as outcomes_nurse_corr,
CONCAT('Outcomes Score vs Doctor Rating = ', round(corr(Outcomes_Score, doctor_rating), 4)) as outcomes_doctor_corr,
CONCAT('Outcomes Score vs Staff Rating = ', round(corr(Outcomes_Score, staff_rating), 4)) as outcomes_staff_rating,
CONCAT('Outcomes Score vs Pain Rating = ', round(corr(Outcomes_Score, pain_rating), 4)) as outcomes_pain_rating,
CONCAT('Outcomes Score vs Meds Rating = ', round(corr(Outcomes_Score, comm_about_meds_rating), 4)) as outcomes_comm_about_meds_rating,
CONCAT('Outcomes Score vs Enviornment Rating = ', round(corr(Outcomes_Score, environment_rating), 4)) as outcomes_environment_rating,
CONCAT('Outcomes Score vs Discharge Rating = ', round(corr(Outcomes_Score, discharge_rating), 4)) as outcomes_discharge_rating,
CONCAT('Outcomes Score vs Overall Rating = ', round(corr(Outcomes_Score, overall_performance_rating), 4)) as outcomes_overall_performance_rating

FROM survey_transform;