/*Obtener los valores de P# para los proveedores que suministran los articulos T1 y T2*/
/*pi P# (ro T# = T1 AND T# = T2(envios))*/
SELECT P FROM envios WHERE T = 'T1' AND T = 'T2';