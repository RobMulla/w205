DROP TABLE readmissions_transform;

CREATE TABLE readmissions_transform AS

SELECT
measure_id,
min(cast(ra.Score AS int)) AS min_score,
max(cast(ra.Score AS int)) AS max_score,
round(avg(cast(ra.Score AS int)), 2) AS avg_score,
round(variance(cast(ra.Score AS int)), 2) AS var_score,
--var_samp(cast(Score AS int)) AS var_samp_score,
round(stddev_pop(cast(ra.Score AS int)), 2) AS stddev_pop_score,
count(ra.Measure_ID) count,
ra.Measure_Name
--stddev_samp(cast(Score AS int)) AS stddev_samp_score

FROM readmissions ra

WHERE Score NOT LIKE '%Low%' AND
Score NOT LIKE '%Very%' AND
Score NOT LIKE '%Medium%' AND
Score NOT LIKE '%High%' AND
Score NOT LIKE '%Not%'
GROUP BY Measure_ID, Measure_Name

ORDER BY var_score DESC
;