/*Listar los datos de cada uno de los empleados, la ciudad y región en donde trabaja.*/
SELECT NUMEMP, NOMBRE, empleados.OFICINA, EDAD, TITULO, CONTRATO, CUOTA, empleados.VENTAS, CIUDAD, REGION FROM empleados LEFT JOIN
oficinas ON empleados.OFICINA = oficinas.OFICINA;