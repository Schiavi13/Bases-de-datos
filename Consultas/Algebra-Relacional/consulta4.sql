/*Obtener de la tabla de articulos los valores de T# y CIUDAD donde le nombre de la ciudad acaba en D o contiene almenos una E*/
/*pi T#, CIUDAD (ro CIUDAD LIKE '%D' or CIUDAD LIKE '%E%'(articulos))*/
SELECT T, CIUDAD FROM articulos WHERE (CIUDAD LIKE '%D' OR CIUDAD LIKE '%E%');