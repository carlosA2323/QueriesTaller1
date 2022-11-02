CREATE VIEW Product_Categorie AS
select b.categoryName,
       a.productName,count(*) conteo_categoria
from Products a right join categories b on (a.categoryID=b.categoryID)
group by b.categoryName,
       a.productName