/*Saber cuántas oficinas tienen empleados con ventas superiores a su cuota, no queremos saber
cuales sino cuántas hay.*/
SELECT productos.DESCRIPCION, productos.PRECIO, productos.EXISTENCIAS, SUM(pedidos.CANT) 
FROM pedidos INNER JOIN productos ON pedidos.PRODUCTO = productos.IDPRODUCTO 
GROUP BY productos.DESCRIPCION, productos.PRECIO, productos.EXISTENCIAS 
HAVING (SUM(pedidos.CANT) > (productos.EXISTENCIAS*0.75)) ORDER BY SUM(pedidos.CANT);