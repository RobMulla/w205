#! /bin/bash

# save my current directory
MY_CWD=$(pwd)

# creating staging directories

rm ~/staging/exercise_1/clean/*
rmdir ~/staging/exercise_1/clean/
rm ~/staging/exercise_1/*
rmdir ~/staging/exercise_1/

# clean hdfs

HDFS_DIR="/user/w205/hospital_compare"

hdfs dfs -rm /user/w205/hospital_compare/hospitals/*
hdfs dfs -rm /user/w205/hospital_compare/effective_care/*
hdfs dfs -rm /user/w205/hospital_compare/readmissions/*
hdfs dfs -rm /user/w205/hospital_compare/measures/*
hdfs dfs -rm /user/w205/hospital_compare/surveys_responses/*
hdfs dfs -rm /user/w205/hospital_compare/survey_hospitals/*
hdfs dfs -rm /user/w205/hospital_compare/tps/*

hdfs dfs -rmdir /user/w205/hospital_compare/hospitals/
hdfs dfs -rmdir /user/w205/hospital_compare/effective_care/
hdfs dfs -rmdir /user/w205/hospital_compare/readmissions/
hdfs dfs -rmdir /user/w205/hospital_compare/measures/
hdfs dfs -rmdir /user/w205/hospital_compare/surveys_responses/
hdfs dfs -rmdir /user/w205/hospital_compare/survey_hospital/
hdfs dfs -rmdir /user/w205/hospital_compare/tps/

hdfs dfs -rm /user/w205/hospital_compare/*
hdfs dfs -rmdir /user/w205/hospital_compare

# Change directory back to the original

cd $MY_CWD

# Clean exit

exit
