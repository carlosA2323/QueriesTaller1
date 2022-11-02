select * from fabricante;
select * from producto;

/* Parte 1 */

/* pregunta 1 */
select a.*,b.*
from fabricante as a inner join producto as b on (a.codigo=b.codigo_fabricante)
where a.nombre='Crucial' and b.precio>200;
/* pregunta 2 */
select b.nombre,b.precio,a.nombre
from fabricante as a inner join producto as b on (a.codigo=b.codigo_fabricante)
where  b.precio>=180
order by b.precio desc, b.nombre asc;
/* pregunta 3 */
select a.*
from fabricante a
where exists (select 1 from producto b where a.codigo=b.codigo_fabricante);
/* pregunta 4 */
select b.codigo,b.nombre,b.codigo_fabricante,a.nombre
from fabricante as a inner join producto as b on (a.codigo=b.codigo_fabricante)
group by b.codigo,b.nombre,b.codigo_fabricante,a.nombre;

/* Parte 2 */


/* pregunta 1 */
select a.nombre,b.nombre
from fabricante as a left join producto as b on (a.codigo=b.codigo_fabricante)
group by a.nombre,b.nombre;

/* pregunta 2 */
select a.nombre,b.nombre
from fabricante as a left join producto as b on (a.codigo=b.codigo_fabricante)
where b.nombre is null
group by a.nombre,b.nombre;

/* pregunta 3 */
select b.codigo_fabricante,
       max(precio) maximo_precio,
       min(precio) minimo_precio,
       AVG(precio) prom_precio,
       count(distinct (b.nombre)) conteo_productos
from fabricante as a left join producto as b on (a.codigo=b.codigo_fabricante)
group by b.codigo_fabricante
HAVING AVG(precio)>200;




