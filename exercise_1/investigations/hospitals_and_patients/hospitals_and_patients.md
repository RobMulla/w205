hospitals_and_patients.txt

Below are the correlation results comparing the average scores for hospital quality related to patient survey responses. The hospital quality rakings were taken from the `Clinical_Care__Process_Domain_Score` and `Clinical_Care__Process_Domain_Score` variables in the TPS table. The survey responses were taken from the `Performance_Rate` variable in the surveys_responses table. The results are quite interesting. We see the most strongly correlated variables are the Outcomes Score vs Environment Rating and the Outcomes Score vs Staff Rating. Both of these were negatively correlated, meaning that the outcomes were more favorable when the ratings were less. This is counter intuitive but makes sense, a doctor may be more liked by the patient but that does not necessarily mean they are getting the best care from the doctor. It’s important to note that none of these correlations are substantial enough to make a strong conclusion and may be picking up on noise from the dataset.

|               Coefficient Values               |
|:----------------------------------------------:|
| Process Score vs Nurse Rating = 0.0681         |
| Process Score vs Doctor Rating = 0.0434        |
| Process Score vs Staff Rating = 0.0507         |
| Process Score vs Pain Rating = 0.0591          |
| Process Score vs Meds Rating = 0.0746          |
| Process Score vs Enviornment Rating = 0.068    |
| Process Score vs Discharge Rating = 0.0756     |
| Process Score vs Overall Rating = 0.0631       |
| Outcomes Score vs Nurse Rating = -0.049        |
| Outcomes Score vs Doctor Rating = -0.1352      |
| Outcomes Score vs Staff Rating = -0.1055       |
| Outcomes Score vs Pain Rating = -0.0362        |
| Outcomes Score vs Meds Rating = -0.0721        |
| Outcomes Score vs Enviornment Rating = -0.1414 |
| Outcomes Score vs Discharge Rating = -0.0544   |
| Outcomes Score vs Overall Rating = 0.0446      |
