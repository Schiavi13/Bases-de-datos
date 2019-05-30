/*Listar los empleados con una cuota superior a la de su jefe; para cada empleado sacar sus datos
y el número, nombre y cuota de su jefe.*/
SELECT empleados.NUMEMP AS "Numero empleado", empleados.NOMBRE AS "Nombre empleado",
empleados.OFICINA, empleados.CONTRATO, empleados.TITULO, empleados.EDAD, empleados.VENTAS, empleados.CUOTA AS "Cuota empleado", 
jefes.NOMBRE AS "Nombre jefe", jefes.CUOTA AS "Cuota jefe" 
FROM(empleados INNER JOIN (empleados AS jefes) ON empleados.JEFE = jefes.NUMEMP) WHERE empleados.CUOTA > jefes.CUOTA