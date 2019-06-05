/*Obtener los valores de C# para los componentes suministrados para cualquier articulo de MADRID*/
/*pi C# (ro CIUDAD = MADRID (articulos NATURAL JOIN envios))*/
SELECT DISTINCT C FROM articulos INNER JOIN envios ON articulos.T = envios.T WHERE CIUDAD = 'MADRID';