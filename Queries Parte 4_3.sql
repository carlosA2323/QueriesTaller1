

use Bodega

/*Datos de ejemplo*/

select *
from PRODUCTO
;
Select *
from pedido

;
/* PRODUCTO */
insert into PRODUCTO (idprod, descripcion, existencias,precio,preciov) VALUES (1,'Clavos',5000,0.02,0.05) ;
insert into PRODUCTO (idprod, descripcion, existencias,precio,preciov) VALUES (2,'Tornillos',4000,0.07,0.15) ;
insert into PRODUCTO (idprod, descripcion, existencias,precio,preciov) VALUES (3,'Tuercas',4500,0.08,0.17) ;

/* PRODUCTO */
insert into pedido (idpedido,idprod,cantidad) values (1,1,200) ;
insert into pedido (idpedido,idprod,cantidad) values (2,2,150) ;
insert into pedido (idpedido,idprod,cantidad) values (3,3,50) ;

/*Con ests procedimiento almacenado se insertan los registros nuevos*/
EXEC ActualizarProductos 6,'Lapiz',400,1,1.5;

/*Con ests procedimiento almacenado se insertan los registros nuevos*/
EXEC ActualizarPedido 6,6,7;

