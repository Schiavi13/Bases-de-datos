/*Hacer una versión en la que aparecen sólo las que tienen empleados*/
SELECT oficinas.OFICINA, CIUDAD, NUMEMP, NOMBRE FROM oficinas INNER JOIN
empleados ON oficinas.OFICINA = empleados.OFICINA WHERE oficinas.REGION='ESTE';