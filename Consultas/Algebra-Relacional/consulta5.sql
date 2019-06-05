/*Obtener los valores de P# para los proveedores que suministran para el articulo T1 el componente C1*/
/*pi P# (ro T# = T1 and C# = C1 (envios))*/
SELECT P FROM envios WHERE (T = 'T1' AND C = 'C1');