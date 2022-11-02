DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda 
go 

USE tienda;
go

CREATE TABLE fabricante (
codigo INT  Identity PRIMARY KEY,
nombre VARCHAR(100) NOT NULL
);
go


CREATE TABLE producto (
codigo INT Identity PRIMARY KEY,nombre VARCHAR(100) NOT NULL,
precio decimal (10,2) NOT NULL,
codigo_fabricante INT NOT NULL,
FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);