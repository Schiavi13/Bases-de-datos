/*Saber cuántas oficinas tienen empleados con ventas superiores a su cuota, no queremos saber
cuales sino cuántas hay.*/
SELECT COUNT(*) FROM 
(SELECT oficinas.OFICINA FROM oficinas INNER JOIN empleados ON oficinas.OFICINA = empleados.OFICINA 
WHERE empleados.VENTAS > empleados.CUOTA GROUP BY oficinas.OFICINA) AS ofiemp;