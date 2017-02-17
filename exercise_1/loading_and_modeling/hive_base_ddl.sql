DROP TABLE hospitals;
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
LOCATION '/user/w205/hospital_compare/';

