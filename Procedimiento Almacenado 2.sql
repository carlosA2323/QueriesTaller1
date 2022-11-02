

--select * from PRODUCTO
--drop procedure ActualizarProductos

CREATE PROCEDURE ActualizarProductos @idprod char(7), @descripcion varchar(25), @existencias int, @precio decimal(10,2), @preciov decimal (10,2)

AS 

IF NOT EXISTS (SELECT * FROM producto WHERE idprod = @idprod or descripcion=@descripcion)
BEGIN
    insert into PRODUCTO (idprod, descripcion, existencias,precio,preciov) VALUES (@idprod,@descripcion,@existencias,@precio,@preciov);
END
ELSE
BEGIN 
   RAISERROR('ESTE PRODUCTO YA HA SIDO INGRESADO' , 16, 1, @idprod)
END