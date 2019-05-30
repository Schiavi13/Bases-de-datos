/*Listar las oficinas con objetivo superior a 600.000 pts indicando para cada una de ellas el nombre
de su director.*/
SELECT oficinas.OFICINA, NOMBRE FROM oficinas INNER JOIN empleados ON oficinas.DIR = empleados.NUMEMP WHERE
oficinas.OBJETIVO > 600000;