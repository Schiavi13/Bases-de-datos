/*¿Cuál es el importe total de los pedidos realizados por el empleado Vicente Pantalla?*/
SELECT SUM(IMPORTE) FROM pedidos INNER JOIN empleados ON pedidos.REP = empleados.NUMEMP 
WHERE empleados.NOMBRE = 'VICENTE PANTALLA';