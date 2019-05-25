/*Obtener las mismas columnas que en el ejercicio 2 pero sacando únicamente las 5 líneas de pedido
de menor precio unitario.*/
SELECT NUMPEDIDO AS "Numero de pedido", FAB, PRODUCTO, CANT AS CANTIDAD, 
CAST((IMPORTE/CANT) AS decimal(9,2)) AS "Precio unitario", IMPORTE FROM pedidos ORDER BY 5 LIMIT 5;