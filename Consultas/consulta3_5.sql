/*Listar los pedidos superiores a 25.000 pts, incluyendo el nombre del empleado que tomó el
pedido y el nombre del cliente que lo solicitó.*/
SELECT NUMPEDIDO, empleados.NOMBRE AS EMPLEADO, clientes.NOMBRE AS CLIENTE, pedidos.IMPORTE FROM
clientes RIGHT JOIN(empleados RIGHT JOIN pedidos ON empleados.NUMEMP = pedidos.REP) ON clientes.NUMCLIE = pedidos.CLIE WHERE
pedidos.IMPORTE > 25000;