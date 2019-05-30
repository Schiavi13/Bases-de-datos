/*Listar las oficinas del este indicando para cada una de ellas su número, ciudad, números y
nombres de sus empleados.*/

SELECT oficinas.OFICINA, CIUDAD, NUMEMP, NOMBRE FROM oficinas LEFT JOIN
empleados ON oficinas.OFICINA = empleados.OFICINA WHERE oficinas.REGION='ESTE';
