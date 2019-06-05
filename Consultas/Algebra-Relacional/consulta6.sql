/*Obtener los valores de TNOMBRE en orden alfabetico para los articulos abastecidos por el proveedor P1*/
/*pi TNOMBRE (ro P = P1 (articulos NATURAL JOIN envios)) ORDER BY TNOMBRE*/
SELECT TNOMBRE FROM articulos INNER JOIN envios ON articulos.T = envios.T WHERE P = 'P1' ORDER BY TNOMBRE;