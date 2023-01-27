/****** Script for SelectTopNRows command from SSMS  ******/
SELECT purchase_price
FROM [Google DA Lessons].[dbo].[Hhbf0PXYQVmW39D12OFZ8A_ef465a16$]
ORDER BY purchase_price DESC


-- Converting Data types with CAST 
-- FLOAT vs STRING... if a certain data type is a string rather than a float in this case, the data won't be organized to your liking.
-- so we must change it to FLOAT...in SSMS we did not have to do this, but we had to in Sandbox (i.e. purchase_price = STRING we are CASTing it as a FLOAT)

SELECT CAST(purchase_price AS FLOAT)
FROM [Google DA Lessons].[dbo].[Hhbf0PXYQVmW39D12OFZ8A_ef465a16$]
ORDER BY CAST (purchase_price AS FLOAT) DESC


--pulling purchase_price data from Decemeber 2020

SELECT date, purchase_price
FROM [Google DA Lessons].[dbo].[Hhbf0PXYQVmW39D12OFZ8A_ef465a16$]
WHERE date BETWEEN '2020-12-01' AND '2020-12-31'


-- we only want the date and not the time where as the previous query gave the date and the time

SELECT CAST(date AS date) AS date_only
FROM [Google DA Lessons].[dbo].[Hhbf0PXYQVmW39D12OFZ8A_ef465a16$]
WHERE date BETWEEN '2020-12-01' AND '2020-12-31'


--CONCAT FUNCTION..this was to distinguish if there was a certain colored coach customers preferred

SELECT CONCAT(product_code, product_color) as new_prodcut_code
FROM [Google DA Lessons].[dbo].[Hhbf0PXYQVmW39D12OFZ8A_ef465a16$]
WHERE product = 'couch'

--COALESCE.. can be used to return non-null values in a list. 
--So, if there one piece of data and the other is null, then SQL will return the non-null value
--the below statement will then return two product_code items because the product was null.
SELECT COALESCE(product,product_code) AS product_info
FROM [Google DA Lessons].[dbo].[Hhbf0PXYQVmW39D12OFZ8A_ef465a16$]
 
