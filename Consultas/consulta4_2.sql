/*Hallar el importe medio de pedidos, el importe total de pedidos y el precio medio de venta (el
precio de venta es el precio unitario en cada pedido).*/
SELECT CAST(AVG(IMPORTE) AS DECIMAL(9,2)) AS "Media importe", SUM(IMPORTE), 
CAST(AVG(IMPORTE/CANT) AS DECIMAL(9,2)) AS "Media precio de venta" FROM pedidos;