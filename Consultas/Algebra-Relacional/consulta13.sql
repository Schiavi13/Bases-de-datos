/*Obtener todas las ternas (CIUDAD,C#,CIUDAD) tales que un proveedor de la primera ciudad suministre el componente 
especificado para un articulo montado en la segunda ciudad*/
/*pi proveedores.ciudad, C#, articulos.ciudad(ro proveedores.ciudad = articulos.ciudad(articulos NAT JOIN envios NAT JOIN proveedores))*/
SELECT DISTINCT proveedores.CIUDAD, C, articulos.CIUDAD
FROM proveedores INNER JOIN envios ON proveedores.P = envios.P INNER JOIN articulos ON envios.T = articulos.T
WHERE proveedores.CIUDAD = articulos.CIUDAD;