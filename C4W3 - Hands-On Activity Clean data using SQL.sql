

-- Inspect the fuel_type column 
SELECT DISTINCT fuel_type
FROM [Cars_Data].[dbo].[automobile_data$]




--Inspect Length Column (should be b/w 141.1-208.1 per data source)
SELECT 
MIN(length) AS min_length, MAX(length) AS max_length

FROM [Cars_Data].[dbo].[automobile_data$]



--Filling in missing data checking to see if the num_of_doors column contains null values using this query
SELECT num_of_doors

FROM [Cars_Data].[dbo].[automobile_data$]

WHERE num_of_doors is NULL



-- There are two NULLs in num_of_doors (dodge and mazda); confirmed they should be UPDATED as 'four'
-- In order to update the mazda, you must change the fuel type since it is different fromt he dodge.

UPDATE [Cars_Data].[dbo].[automobile_data$]
SET num_of_doors = 'four'
WHERE make= 'dodge' AND fuel_type='gas' AND body_style = 'sedan'

UPDATE [Cars_Data].[dbo].[automobile_data$]
SET num_of_doors = 'four'
WHERE make= 'mazda' AND fuel_type='diesel' AND body_style = 'sedan'



--checking to see if the doors had successfully updated.

SELECT num_of_doors

FROM [Cars_Data].[dbo].[automobile_data$]

WHERE num_of_doors is NULL


--Identify Potential Errors (checking num_of_cylinders)

SELECT DISTINCT num_of_cylinders

FROM[Cars_Data].[dbo].[automobile_data$]


--the "two" in row 7 is misspelled as "tow" 

UPDATE [Cars_Data].[dbo].[automobile_data$]
SET num_of_cylinders = 'two'
WHERE num_of_cylinders = 'tow'


--checking to see if the doors had successfully updated

SELECT DISTINCT num_of_cylinders

FROM[Cars_Data].[dbo].[automobile_data$]


--checking compression_ratio column per source should be b/w 7-23

SELECT  MIN(compression_ratio) AS min_compression_ratio,
  MAX(compression_ratio) AS max_compression_ratio

FROM[Cars_Data].[dbo].[automobile_data$]

-- shows compression_ratios as 7-23

SELECT  MIN(compression_ratio) AS min_compression_ratio,
  MAX(compression_ratio) AS max_compression_ratio

FROM[Cars_Data].[dbo].[automobile_data$]

WHERE compression_ratio <> 70



SELECT COUNT(*) AS num_of_rows_to_delete

FROM [Cars_Data].[dbo].[automobile_data$]

WHERE compression_ratio = 70

--use DELETE to delete the one row that had a value of 70 (AUDI)

SELECT *

FROM [Cars_Data].[dbo].[automobile_data$]

WHERE compression_ratio = 70



DELETE [Cars_Data].[dbo].[automobile_data$]

WHERE compression_ratio = 70


--checking drive_wheels column for inconsistencies 
 
SELECT DISTINCT drive_wheels

FROM [Cars_Data].[dbo].[automobile_data$] --(3 results possibly spaces at the end)


--LENGTH statement to determine the length (LEN) of how long each of these string variables

SELECT DISTINCT drive_wheels, LEN (drive_wheels) AS string_length

FROM [Cars_Data].[dbo].[automobile_data$]


--if string_length >3 then you would enter the below statement, 

--UPDATE [Cars_Data].[dbo].[automobile_data$]

--SET drive_wheels = TRIM(drive_wheels)

--WHERE TRUE;



--searching for max price per quiz questions
SELECT  MAX(price) AS max_price

FROM[Cars_Data].[dbo].[automobile_data$]