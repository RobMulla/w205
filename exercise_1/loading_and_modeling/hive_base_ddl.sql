DROP TABLE hospitals
;
CREATE EXTERNAL TABLE hospitals (
	Provider_ID string, 
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	Hospital_Type string,
	Hospital_Ownership string,
	Emergency_Services string,
	Meets_criteria_for_meaningful_use_of_EHRs string,
	Hospital_overall_rating string,
	Hospital_overall_rating_footnote string,
	Mortality_national_comparison string,
	Mortality_national_comparison_footnote string,
	Safety_of_care_national_comparison string,
	Safety_of_care_national_comparison_footnote string,
	Readmission_national_comparison string,
	Readmission_national_comparison_footnote string,
	Patient_experience_national_comparison string,
	Patient_experience_national_comparison_footnote string,
	Effectiveness_of_care_national_comparison string,
	Effectiveness_of_care_national_comparison_footnote string,
	Timeliness_of_care_national_comparison string,
	Timeliness_of_care_national_comparison_footnote string,
	Efficient_use_of_medical_imaging_national_comparison string,
	Efficient_use_of_medical_imaging_national_comparison_footnote string
	)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospitals';

DROP TABLE effective_care;
CREATE EXTERNAL TABLE effective_care (
	Provider_ID string, 
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	Condition string,
	Measure_ID string,
	Measure_Name string,
	Score string,
	Sample string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
	)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/effective_care';

DROP TABLE readmissions;
CREATE EXTERNAL TABLE readmissions (
	Provider_ID string, 
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	Measure_Name string,
	Measure_ID string,
	Compared_to_National string,
	Denominator string,
	Score string,
	Lower_Estimate string,
	Higher_Estimate string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
	)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/readmissions';

DROP TABLE Measures;
CREATE EXTERNAL TABLE Measures (
	Measure_Name string,
	Measure_ID string,
	Measure_Start_Quarter string,
	Measure_Start_Date string,
	Measure_End_Quarter string,
	Measure_End_Date string,
	Footnote string,
	Footnote_Text string
	)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/measures';

DROP TABLE surveys_responses;
CREATE EXTERNAL TABLE surveys_responses (
	Provider_Number string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Nam string,
	Communication_with_Nurses_Floor string,
	Communication_with_Nurses_Achievement_Threshold string,
	Communication_with_Nurses_Benchmark string,
	Communication_with_Nurses_Baseline_Rate string,
	Communication_with_Nurses_Performance_Rate string,
	Communication_with_Nurses_Achievement_Points string,
	Communication_with_Nurses_Improvement_Points string,
	Communication_with_Nurses_Dimension_Score string,
	Communication_with_Doctors_Floor string,
	Communication_with_Doctors_Achievement_Threshold string,
	Communication_with_Doctors_Benchmark string,
	Communication_with_Doctors_Baseline_Rate string,
	Communication_with_Doctors_Performance_Rate string,
	Communication_with_Doctors_Achievement_Points string,
	Communication_with_Doctors_Improvement_Points string,
	Communication_with_Doctors_Dimension_Score string,
	Responsiveness_of_Hospital_Staff_Floo string,
	Responsiveness_of_Hospital_Staff_Achievement_Threshold string,
	Responsiveness_of_Hospital_Staff_Benchmark string,
	Responsiveness_of_Hospital_Staff_Baseline_Rate string,
	Responsiveness_of_Hospital_Staff_Performance_Rate string,
	Responsiveness_of_Hospital_Staff_Achievement_Points string,
	Responsiveness_of_Hospital_Staff_Improvement_Points string,
	Responsiveness_of_Hospital_Staff_Dimension_Score string,
	Pain_Management_Floor string,
	Pain_Management_Achievement_Threshold string,
	Pain_Management_Benchmark string,
	Pain_Management_Baseline_Rate string,
	Pain_Management_Performance_Rate string,
	Pain_Management_Achievement_Points string,
	Pain_Management_Improvement_Points string,
	Pain_Management_Dimension_Score string,
	Communication_about_Medicines_Floor string,
	Communication_about_Medicines_Achievement_Threshold string,
	Communication_about_Medicines_Benchmar string,
	Communication_about_Medicines_Baseline_Rate string,
	Communication_about_Medicines_Performance_Rate string,
	Communication_about_Medicines_Achievement_Points string,
	Communication_about_Medicines_Improvement_Points string,
	Communication_about_Medicines_Dimension_Score string,
	Cleanliness_and_Quietness_of_Hospital_Environment_Floor string,
	Cleanliness_and_Quietness_of_Hospital_Environment_Achievement_Threshold string,
	Cleanliness_and_Quietness_of_Hospital_Environment_Benchmark string,
	Cleanliness_and_Quietness_of_Hospital_Environment_Baseline_Rate string,
	Cleanliness_and_Quietness_of_Hospital_Environment_Performance_Rate string,
	Cleanliness_and_Quietness_of_Hospital_Environment_Achievement_Points string,
	Cleanliness_and_Quietness_of_Hospital_Environment_Improvement_Points string,
	Cleanliness_and_Quietness_of_Hospital_Environment_Dimension_Score string,
	Discharge_Information_Floo string,
	Discharge_Information_Achievement_Threshold string,
	Discharge_Information_Benchmark string,
	Discharge_Information_Baseline_Rate string,
	Discharge_Information_Performance_Rate string,
	Discharge_Information_Achievement_Points string,
	Discharge_Information_Improvement_Points string,
	Discharge_Information_Dimension_Score string,
	Overall_Rating_of_Hospital_Floor string,
	Overall_Rating_of_Hospital_Achievement_Threshold string,
	Overall_Rating_of_Hospital_Benchmark string,
	Overall_Rating_of_Hospital_Baseline_Rate string,
	Overall_Rating_of_Hospital_Performance_Rate string,
	Overall_Rating_of_Hospital_Achievement_Points string,
	Overall_Rating_of_Hospital_Improvement_Points string,
	Overall_Rating_of_Hospital_Dimension_Score string,
	HCAHPS_Base_Score string,
	HCAHPS_Consistency_Score string
	)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/survey_responses';

DROP TABLE surveys_hospitals;
CREATE EXTERNAL TABLE surveys_hospitals (
	Provider_ID string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	HCAHPS_Measure_ID string,
	HCAHPS_Question string,
	HCAHPS_Answer_Description string,
	Patient_Survey_Star_Rating string,
	Patient_Survey_Star_Rating_Footnote string,
	HCAHPS_Answer_Percent string,
	HCAHPS_Answer_Percent_Footnote string,
	HCAHPS_Linear_Mean_Value string,
	Number_of_Completed_Surveys string,
	Number_of_Completed_Surveys_Footnote string,
	Survey_Response_Rate_Percent string,
	Survey_Response_Rate_Percent_Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
	)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/survey_hospital';

DROP TABLE tps;
CREATE EXTERNAL TABLE tps (
	Provider_Number string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	Zip_Code string,
	County_Name string,
	Unweighted_Normalized_Clinical_Care__Process_Domain_Score string,
	Weighted_Clinical_Care__Process_Domain_Score string,
	Unweighted_Normalized_Clinical_Care__Outcomes_Domain_Score string,
	Weighted_Normalized_Clinical_Care__Outcomes_Domain_Score string,
	Unweighted_Patient_and_Caregiver_Centered_Experience_of_Care_Care_Coordination_Domain_Score string,
	Weighted_Patient_and_Caregiver_Centered_Experience_of_Care_Care_Coordination_Domain_Score string,
	Unweighted_Normalized_Safety_Domain_Score string,
	Weighted_Safety_Domain_Score string,
	Unweighted_Normalized_Efficiency_and_Cost_Reduction_Domain_Score string,
	Weighted_Efficiency_and_Cost_Reduction_Domain_Score string,
	Total_Performance_Score string
	)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/tps';