use actividades;

/* Mostrar tablas */

Select * from cajas;

/* Ej 3.1 */
Select * from almacenes;

/* Ej 3.2 */
Select * from cajas WHERE valor>150;

/* Ej 3.3 */
Select distinct contenido from cajas;

/* Ej 3.4 */
Select AVG(valor) from cajas;

/* Ej 3.5 */
Select AVG(valor) from cajas inner join almacenes ON cajas.almacen=almacenes.codigo group by almacenes.codigo;

/* Ej 3.6 */
Select codigo from almacenes inner join cajas on almacenes.codigo=cajas.almacen group by almacenes.codigo HAVING AVG(cajas.valor) >= 150;

/* Ej 3.7 */
Select cajas.numreferencia, almacenes.lugar from cajas inner join almacenes on cajas.almacen=almacenes.codigo; 

/* Ej 3.8 */
Select count(cajas.numreferencia) from cajas inner join almacenes on cajas.almacen=almacenes.codigo group by almacenes.codigo;

/* Ej 3.9 */
Select almacenes.codigo from cajas inner join almacenes on cajas.almacen=almacenes.codigo group by almacenes.codigo, almacenes.capacidad having count(cajas.numreferencia) > almacenes.capacidad;

/* Ej 3.10 */
Select cajas.numreferencia from cajas inner join almacenes on cajas.almacen=almacenes.codigo where almacenes.lugar='bilbao';

/* Ej 3.11 */
Insert into almacenes values (6, 'Barcelona', 3);

/* Ej 3.12 */
Insert into cajas values ('H5RT','Papel',200,2);

/* Ej 3.13 */
Update cajas set valor-=valor*0.15;

/* Ej 3.14 */
Update cajas set valor-=valor*0.2 where valor > (select AVG(valor) from cajas);

/* Ej 3.15 */
Delete cajas where valor < 100;

/* Ej 3.16 */
Delete cajas from cajas where almacen = (Select almacenes.codigo from cajas inner join almacenes on cajas.almacen=almacenes.codigo group by almacenes.codigo, almacenes.capacidad having count(cajas.numreferencia) > almacenes.capacidad);






