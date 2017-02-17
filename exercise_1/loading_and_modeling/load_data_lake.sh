#! /bin/bash

# save my current directory
MY_CWD=$(pwd)

# creating staging directories
mkdir ~/staging
mkdir ~/staging/exercise_1

# change to staging directory
cd ~/staging/exercise_1

# get file from data.medicare.gov
MY_URL="https://data.medicare.gov/views/bg9k-emty/files/6c902f45-e28b-42f5-9f96-ae9d1e583472?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip"
wget "$MY_URL" -O medicare_data.zip

# unzip the midcare data
unzip medicare_data.zip

# make a clean data folder

mkdir clean

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

tail -n +2 "$OLD_FILE1" > $NEW_FILE1
tail -n +2 "$OLD_FILE2" > $NEW_FILE2
tail -n +2 "$OLD_FILE3" > $NEW_FILE3
tail -n +2 "$OLD_FILE4" > $NEW_FILE4
tail -n +2 "$OLD_FILE5" > $NEW_FILE5

# Create our hdfs director

HDFS_DIR="/user/w205/hospital_compare"

hdfs dfs -mkdir /user/w205/hospital_compare

# Copy files to hdfs

hdfs dfs -put clean/* $HDFS_DIR 

# Change directory back to the original

cd $MY_CWD

# Clean exit

exit
