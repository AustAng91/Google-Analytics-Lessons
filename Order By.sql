--ORDER BY query -- must be last command of the entire query
SELECT *
FROM [Google DA Lessons].[dbo].[KNFbyUKxRKiRW8lCsQSo8A_8adeac50$]
ORDER BY [Release Date] desc


--Spedicifed by Genre 'Comedy'
SELECT *
FROM [Google DA Lessons].[dbo].[KNFbyUKxRKiRW8lCsQSo8A_8adeac50$]
WHERE Genre = 'Comedy' 
ORDER BY [Release Date] desc

--Specified by Genre AND Revenue amount 

SELECT *
FROM [Google DA Lessons].[dbo].[KNFbyUKxRKiRW8lCsQSo8A_8adeac50$]
WHERE Genre = 'Comedy' 
AND Revenue > 300000000
ORDER BY [Release Date] desc