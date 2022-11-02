
--select * from pedido;

--drop procedure ActualizarPedido;

CREATE PROCEDURE ActualizarPedido @idpedido char(7), @idprod char(7), @cantidad int

AS 
IF EXISTS (SELECT 1 FROM producto WHERE idprod = @idprod)
BEGIN
            IF EXISTS (SELECT 1 FROM producto where @cantidad<=existencias and  idprod=@idprod)
            BEGIN
                insert into pedido (idpedido, idprod, cantidad) VALUES (@idpedido, @idprod, @cantidad);
                update PRODUCTO set existencias=existencias-@cantidad;
            END
            ELSE
            BEGIN 
            RAISERROR('EXISTENCIA DEL PRODUCTO INSUFICIENTE' , 16, 1, @idpedido)
            END
END
ELSE
BEGIN 
   RAISERROR('ESTE PRODUCTO NO EXISTE' , 16, 1, @idpedido)
END