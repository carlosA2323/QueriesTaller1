CREATE DATABASE Bodega
GO

USE Bodega
GO

CREATE TABLE PRODUCTO
(
    idprod char(7) PRIMARY key,
    descripcion varchar(25),
    existencias int,
    precio decimal(10,2) not null,
    preciov decimal (10,2) not null,
    ganancia as preciov - precio,
    check(preciov>precio)
)
go

create table pedido(
    idpedido char(7),
    idprod char(7),
    cantidad int,
    FOREIGN key(idprod) REFERENCES producto(idprod)
)
go
