#! /bin/bash

# save my current directory
MY_CWD=$(pwd)

# creating staging directories

rm ~/staging/exercise_1/clean/*
rmdir ~/staging/exercise_1/clean/
rm ~/staging/exercise_1/*
rmdir ~/staging/exercise_1/

# remove first line of files and rename

OLD_FILE1="Hospital General Information.csv"
NEW_FILE1="clean/hospitals.csv"

OLD_FILE2="Timely and Effective Care - Hospital.csv"
NEW_FILE2="clean/effective_care.csv"

OLD_FILE3="Readmissions and Deaths - Hospital.csv"
NEW_FILE3="clean/readmissions.csv"

OLD_FILE4="Measure Dates.csv"
NEW_FILE4="clean/Measures.csv"

OLD_FILE5="hvbp_hcahps_11_10_2016.csv"
NEW_FILE5="clean/surveys_responses.csv"

# Create our hdfs director

HDFS_DIR="/user/w205/hospital_compare"

hdfs dfs -rm /user/w205/hospital_compare/*
hdfs dfs -rmdir /user/w205/hospital_compare

# Change directory back to the original

cd $MY_CWD

# Clean exit

exit
