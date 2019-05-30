/*hacer otra en las que aparezcan las oficinas del este que no tienen empleados.*/
SELECT oficinas.OFICINA, CIUDAD, NUMEMP, NOMBRE FROM oficinas LEFT JOIN 
empleados ON oficinas.OFICINA = empleados.OFICINA WHERE oficinas.REGION='ESTE' AND NUMEMP IS NULL;