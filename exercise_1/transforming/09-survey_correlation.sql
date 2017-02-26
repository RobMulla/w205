SELECT

CONCAT('Process Score vs Nurse Rating = ', corr(Process_Score, nurse_rating)) as process_nurse_corr,
CONCAT('Process Score vs Doctor Rating = ', corr(Process_Score, doctor_rating)) as process_doctor_corr,
CONCAT('Process Score vs Staff Rating = ', corr(Process_Score, staff_rating)) as process_staff_rating,
CONCAT('Process Score vs Pain Rating = ', corr(Process_Score, pain_rating)) as process_pain_rating,
CONCAT('Process Score vs Meds Rating = ', corr(Process_Score, comm_about_meds_rating)) as process_comm_about_meds_rating,
CONCAT('Process Score vs Enviornment Rating = ', corr(Process_Score, environment_rating)) as process_environment_rating,
CONCAT('Process Score vs Discharge Rating = ', corr(Process_Score, discharge_rating)) as process_discharge_rating,
CONCAT('Process Score vs Overall Rating = ', corr(Process_Score, overall_performance_rating)) as process_overall_performance_rating,


CONCAT('Outcomes Score vs Nurse Rating = ', corr(Outcomes_Score, nurse_rating)) as outcomes_nurse_corr,
CONCAT('Outcomes Score vs Doctor Rating = ', corr(Outcomes_Score, doctor_rating)) as outcomes_doctor_corr,
CONCAT('Outcomes Score vs Staff Rating = ', corr(Outcomes_Score, staff_rating)) as outcomes_staff_rating,
CONCAT('Outcomes Score vs Pain Rating = ', corr(Outcomes_Score, pain_rating)) as outcomes_pain_rating,
CONCAT('Outcomes Score vs Meds Rating = ', corr(Outcomes_Score, comm_about_meds_rating)) as outcomes_comm_about_meds_rating,
CONCAT('Outcomes Score vs Enviornment Rating = ', corr(Outcomes_Score, environment_rating)) as outcomes_environment_rating,
CONCAT('Outcomes Score vs Discharge Rating = ', corr(Outcomes_Score, discharge_rating)) as outcomes_discharge_rating,
CONCAT('Outcomes Score vs Overall Rating = ', corr(Outcomes_Score, overall_performance_rating)) as outcomes_overall_performance_rating

FROM survey_transform;