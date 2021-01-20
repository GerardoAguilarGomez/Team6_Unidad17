use actividades;

/* EJERCICIO 1 */

/*1.1*/
select Nombre from articulos order by Nombre asc;

/*1.2*/
select Nombre,Precio from articulos order by Nombre asc;

/*1.3*/
select Nombre from articulos where Precio<=200 order by Nombre asc;

/*1.4*/
select * from articulos where Precio>=60 and Precio<=120 order by Nombre asc;

/*1.5*/
select Nombre,Precio*166.386 as 'Precio_Pesetas' from articulos order by Nombre asc;

/*1.6*/
select avg(Precio) as 'Precio_Medio' from articulos

/*1.7*/
select avg(Precio) as 'Precio_Medio' from articulos where fabricante=2

/*1.8*/
select count(*) as 'Numero_articulos' from articulos where precio>=180

/*1.9*/
select Nombre,Precio from articulos where precio>=180 order by precio desc,nombre asc

/*1.10*/
select a.Nombre,b.nombre  as 'Fabricante' from articulos a,fabricantes b where a.fabricante=b.codigo order by a.nombre asc

/*1.11*/
select a.Nombre,a.precio,b.nombre as 'Fabricante' from articulos a,fabricantes b where a.fabricante=b.codigo order by a.nombre asc

/*1.12*/
select fabricante,avg(precio) as 'Precio_Medio' from articulos group by fabricante

/*1.13*/
select b.nombre as 'fabricante',avg(a.precio) as 'Precio_Medio' from articulos a,fabricantes b where  a.fabricante=b.codigo group by b.nombre

/*1.14*/
select b.nombre as 'fabricante',avg(a.precio) as 'Precio_Medio' from articulos a,fabricantes b where  a.fabricante=b.codigo group by b.nombre HAVING avg(precio)>=150

/*1.15*/
select nombre,precio from articulos where precio=(select min(precio) from articulos)

/*1.16*/
select b.nombre as 'fabricante',a.nombre,a.precio from articulos a,fabricantes b where a.fabricante=b.codigo and a.precio=(select max(c.precio) from articulos c where b.codigo=c.fabricante)  

/*1.17*/
--insert into articulos (CODIGO,NOMBRE,PRECIO,FABRICANTE) VALUES (11,'Altavoces',70,2);

/*1.18*/
update articulos set nombre='Impresora Laser' where codigo=8;

/*1.19*/
select nombre,precio*0.9 as 'PrecioConDescuento' from articulos

/*1.20*/
select nombre,precio-10 as 'PrecioConDescuento' from articulos where precio>=120