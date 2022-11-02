
--drop PROCEDURE CalcularEdadEmpleado
--;
CREATE PROCEDURE CalcularEdadEmpleado @employeeID INTEGER
AS

IF EXISTS (SELECT 1 FROM employees WHERE employeeID = @employeeID)
BEGIN
                SELECT lastname,
                        firstname,
                        (CAST(DATEDIFF(dd, BirthDate,GETDATE())/365.25 as int)) edad,
                   case when (CAST(DATEDIFF(dd, BirthDate,GETDATE())/365.25 as int))>=70 then '1_Jubilado' 
                        when (CAST(DATEDIFF(dd, BirthDate,GETDATE())/365.25 as int)) between 60 and 70 then '2_Por Jubilar'
                        when (CAST(DATEDIFF(dd, BirthDate,GETDATE())/365.25 as int))<60 then '3_Falta_annios_para_jubilar'
                        else 'otros' end flag_jubilacion
                FROM employees WHERE employeeID = @employeeID
END
ELSE
BEGIN 
   RAISERROR('ESTE EMPLEADO NO EXISTE' , 16, 1, @employeeID)
END