/*Repetir el ejercicio anterior pero sin recuperar las ternas en los que los dos valores de ciudad sean los mismos*/
/*pi proveedores.ciudad, C#, articulos.ciudad(ro proveedores.ciudad <> articulos.ciudad(articulos NAT JOIN envios NAT JOIN proveedores))*/
SELECT DISTINCT proveedores.CIUDAD, C, articulos.CIUDAD
FROM proveedores INNER JOIN envios ON proveedores.P = envios.P INNER JOIN articulos ON envios.T = articulos.T
WHERE proveedores.CIUDAD <> articulos.CIUDAD;