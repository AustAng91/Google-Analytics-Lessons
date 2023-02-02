--CONCAT for Bike Data
SELECT subscriber_type
	
	CONCAT(start_station_name, 'to', end_station_name) AS route
	COUNT(*) as num_trips
	ROUND(AVG(CAST as int64)/60),2) AS duration

FROM [Google DA Lessons].[dbo].[bikeshare_trips$]

GROUP BY start_station_name, end_station_name, usertype

ORDER BY num_trips DESC

LIMIT 10
