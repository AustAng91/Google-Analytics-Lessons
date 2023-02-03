--INNER JOIN b/w two imported tables Joining tables with department_id from both tables

SELECT[Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$]. name AS employee_name,[Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$]. role AS employee_role,[Google DA Lessons].[dbo].[EovSmanLQh6L0pmpy4Iedg_fe20c7a8$]. name AS department_name

FROM [Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$]

INNER JOIN [Google DA Lessons].[dbo].[EovSmanLQh6L0pmpy4Iedg_fe20c7a8$] 

ON [Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$].department_id = 
[Google DA Lessons].[dbo].[EovSmanLQh6L0pmpy4Iedg_fe20c7a8$].department_id



--LEFT JOIN --> will return a null value in department_name because it did not have corresponding values
SELECT[Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$]. name AS employee_name,[Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$]. role AS employee_role,[Google DA Lessons].[dbo].[EovSmanLQh6L0pmpy4Iedg_fe20c7a8$]. name AS department_name

FROM [Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$]

LEFT JOIN [Google DA Lessons].[dbo].[EovSmanLQh6L0pmpy4Iedg_fe20c7a8$] 

ON [Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$].department_id = 
[Google DA Lessons].[dbo].[EovSmanLQh6L0pmpy4Iedg_fe20c7a8$].department_id


--RIGHT JOIN --> this will return null values in the employee_name and role columns (row 6 &7) because there was no corresponding data.

SELECT[Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$]. name AS employee_name,[Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$]. role AS employee_role,[Google DA Lessons].[dbo].[EovSmanLQh6L0pmpy4Iedg_fe20c7a8$]. name AS department_name

FROM [Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$]

RIGHT JOIN [Google DA Lessons].[dbo].[EovSmanLQh6L0pmpy4Iedg_fe20c7a8$] 

ON [Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$].department_id = 
[Google DA Lessons].[dbo].[EovSmanLQh6L0pmpy4Iedg_fe20c7a8$].department_id


--OUTER JOIN
-- This also returns nulls due to no corresponding amtching values 

SELECT[Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$]. name AS employee_name,[Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$]. role AS employee_role,[Google DA Lessons].[dbo].[EovSmanLQh6L0pmpy4Iedg_fe20c7a8$]. name AS department_name

FROM [Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$]

FULL OUTER JOIN [Google DA Lessons].[dbo].[EovSmanLQh6L0pmpy4Iedg_fe20c7a8$] 

ON [Google DA Lessons].[dbo].[ac7_JD2BTbyO_yQ9gU28iw_55306ffc$].department_id = 
[Google DA Lessons].[dbo].[EovSmanLQh6L0pmpy4Iedg_fe20c7a8$].department_id