USE actividades;

/* Ejercicio 2.1 */
SELECT APELLIDOS FROM empleados;

/* Ejercicio 2.2 */
SELECT DISTINCT APELLIDOS FROM empleados;

/* Ejercicio 2.3 */
SELECT * FROM empleados WHERE APELLIDOS = 'Smith';

/* Ejercicio 2.4 */
SELECT * FROM empleados WHERE APELLIDOS IN ('Smith','Rogers');

/* Ejercicio 2.5 */
SELECT * FROM empleados WHERE DEPARTAMENTO = 14;

/*Ejercicio 2.6*/
SELECT * FROM empleados WHERE DEPARTAMENTO IN (37,77);

/*Ejercicio 2.7*/
SELECT * FROM empleados WHERE APELLIDOS LIKE 'P%';

/* Ejercicio 2.8*/
SELECT SUM(PRESUPUESTO) AS TOTAL FROM departamentos;

/* Ejercicio 2.9*/
SELECT COUNT(DNI) AS CANTIDAD_EMPLE, DEPARTAMENTO FROM empleados GROUP BY DEPARTAMENTO;

/*Ejercicio 2.10*/
SELECT * FROM empleados INNER JOIN departamentos ON 
empleados.DEPARTAMENTO = departamentos.CODIGO;

/* Ejercicio 2.11 */
SELECT empleados.NOMBRE, APELLIDOS, departamentos.NOMBRE, PRESUPUESTO FROM empleados 
INNER JOIN departamentos ON empleados.DEPARTAMENTO = departamentos.CODIGO;

/* Ejercicio 2.12 */
SELECT empleados.NOMBRE, APELLIDOS FROM empleados INNER JOIN 
departamentos on empleados.DEPARTAMENTO = 
departamentos.CODIGO AND departamentos.PRESUPUESTO > 60000;

/* Ejercicio 2.13 */
SELECT * FROM departamentos WHERE PRESUPUESTO > 
(SELECT AVG(PRESUPUESTO) FROM departamentos);

/* Ejercicio 2.14 */
SELECT NOMBRE FROM departamentos WHERE CODIGO IN 
(SELECT DEPARTAMENTO FROM empleados GROUP BY DEPARTAMENTO
HAVING COUNT(*)>2);

/* Ejercicio 2.15*/
INSERT INTO departamentos VALUES(11,'Calidad',40000);

INSERT INTO empleados VALUES (89267109,'Esther','Vázquez',11);

SELECT * FROM empleados WHERE DEPARTAMENTO = 11;

/* Ejercicio 2.16 */

UPDATE departamentos SET PRESUPUESTO = PRESUPUESTO * 0.9;

SELECT PRESUPUESTO FROM departamentos;

/* Ejercicio 2.17 */
UPDATE empleados SET DEPARTAMENTO = 14 WHERE DEPARTAMENTO = 77;

SELECT * FROM empleados WHERE DEPARTAMENTO = 14;

/* Ejercicio 2.18*/

DELETE FROM empleados WHERE DEPARTAMENTO  = 14;

SELECT * FROM empleados;

/* Ejercicio 2.19*/

DELETE FROM empleados WHERE DEPARTAMENTO IN 
(SELECT CODIGO FROM departamentos WHERE PRESUPUESTO >= 60000);

SELECT * FROM empleados;

/* Ejercicio 2.20 */

DELETE * FROM empleados;

SELECT * FROM empleados;



