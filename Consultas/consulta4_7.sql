/*Listar cuántos empleados están asignados a cada oficina, indicar el número de oficina y cuántos
hay asignados.*/
SELECT OFICINA, COUNT(*) AS "Numero empleados" FROM empleados WHERE OFICINA != 0 GROUP BY OFICINA;