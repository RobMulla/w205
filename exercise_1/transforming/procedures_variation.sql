DROP TABLE procedures_variation;

CREATE TABLE procedures_variation AS

SELECT 
measure_id,
avg_score,
stddev_pop_score,
stddev_pop_score/avg_score AS Coef_of_Variation,
count,
Measure_Name

FROM procedures_transform

ORDER BY Coef_of_Variation
;