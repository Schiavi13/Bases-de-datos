/*De cada pedido queremos saber su número de pedido, fab, producto, cantidad, precio unitario e
importe.*/
SELECT NUMPEDIDO AS "Numero de pedido", FAB, PRODUCTO, CANT AS CANTIDAD, 
CAST((IMPORTE/CANT) AS decimal(9,2)) AS "Precio unitario", IMPORTE FROM pedidos;