/*Para cada empleado, obtener su número, nombre, e importe vendido por ese empleado a cada
cliente indicando el número de cliente.*/
SELECT pedidos.REP, empleados.NOMBRE, clientes.NUMCLIE, SUM(IMPORTE) FROM 
(empleados INNER JOIN(pedidos INNER JOIN clientes ON pedidos.CLIE = clientes.NUMCLIE) ON empleados.NUMEMP = pedidos.REP) 
GROUP BY pedidos.REP,clientes.NUMCLIE;