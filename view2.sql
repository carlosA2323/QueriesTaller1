CREATE VIEW INVENTARIO_PRODUCTOS AS
select a.productID,
       a.productName,
       a.UnitPrice,
       count(*) conteo_productos
from Products a
group by a.productID,
       a.productName,
       a.UnitPrice