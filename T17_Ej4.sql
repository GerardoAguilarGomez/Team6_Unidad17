use actividades;

/* Mostrar tablas */

Select * from salas;
Select * from peliculas;

/* Ej 4.1 */
Select nombre from peliculas;

/* Ej 4.2 */
Select distinct calificacionedad from peliculas;

/* Ej 4.3 */
Select * from peliculas where calificacionedad is null;

/* Ej 4.4 */
Select * from salas where pelicula is null;

/* Ej 4.5 */
Select * from salas left join peliculas on salas.pelicula=peliculas.codigo;

/* Ej 4.6 */
Select * from peliculas left join salas on peliculas.codigo=salas.pelicula;

select a.*,b.nombre as nombre_sala,b.codigo as codigo_sala from peliculas a,salas b where a.codigo=b.pelicula
union
select a.*,'','' from peliculas a where  not exists (select * from salas b where a.codigo=b.pelicula)

/* Ej 4.7 */
Select peliculas.nombre from peliculas where not exists (select * from salas where peliculas.codigo=salas.pelicula);

/* Ej 4.8 */
Insert into peliculas values (10,'Uno, Dos, Tres', 'G');

/* Ej 4.9 */
Update peliculas set calificacionedad='PG-13' where calificacionedad is null;

/* Ej 4.10 */
Delete from salas where pelicula in (select codigo from peliculas where calificacionedad='PG');
