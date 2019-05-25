/*Listar los datos de las oficinas de las regiones del norte y del este (tienen que aparecer primero las
del norte y después las del este).*/
SELECT * FROM oficinas WHERE (REGION = 'NORTE' OR REGION = 'ESTE') ORDER BY REGION DESC;