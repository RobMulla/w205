hospital_variability.txt

The following results show the top hospital measurements/procedures that have the greatest variability between hospitals. The metric used to compare these is the Coefficient of Variation (the standard deviation of the metric divided by the mean). These results are a combination of the effective care and readmissions tables. Because the metrics were each ranked using its own scaling (percentage, minutes, etc.) the coefficient of variation allows us to compare across each to find the procedures with the greatest variability. We see that the metrics 'Hospital acquired potentially preventable venous thromboembolism' has the highest variability that makes sense if the occurrence is rare. Similarly the metric 'Percent of newborns whose deliveries were scheduled early' makes sense to have high variability as some hospitals may choose to not allow early deliveries while others may not have the same policies in place.

measure_id		Coeff of Variation 		Measure_Name
-----------------------------------------------------
VTE_6   		2.443   				Hospital acquired potentially preventable venous thromboembolism
PC_01			1.913					Percent of newborns whose deliveries were scheduled early...
OP_22			0.989					Left before being seen
OP_20			0.705					Door to diagnostic eval
ED_2b			0.643					ED2
OP_5			0.639					Median Time to ECG
OP_3b			0.556					Median Time to Transfer... Coronary Intervention
OP_1			0.452					Median Time to Fibrinolysis
ED_1b			0.375					ED1
OP_31			0.344					Improvement in Patients Visual Function ... Following Surgery
