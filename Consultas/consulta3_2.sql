/*Listar los pedidos mostrando su número, importe, nombre del cliente, y el límite de crédito del
cliente correspondiente (todos los pedidos tienen cliente y representante).*/
SELECT NUMPEDIDO, IMPORTE, CLIE, LIMITECREDITO, REP FROM pedidos INNER JOIN clientes ON pedidos.CLIE = clientes.NUMCLIE;