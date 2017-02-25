SELECT measure_id, 
Coef_of_Variation,
Measure_Name
FROM readmissions_variation
UNION
SELECT measure_id, 
Coef_of_Variation,
Measure_Name
FROM procedures_variation

ORDER BY Coef_of_Variation DESC

LIMIT 10
;