/*Para cada empleado cuyos pedidos suman más de 30.000 ptas, hallar su importe medio de pedidos. 
En el resultado indicar el número de empleado y su importe medio de pedidos.*/
SELECT pedidos.REP, AVG(IMPORTE) FROM pedidos INNER JOIN empleados ON pedidos.REP = empleados.NUMEMP 
GROUP BY pedidos.REP HAVING SUM(IMPORTE) > 30000;