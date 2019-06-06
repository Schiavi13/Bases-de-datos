/*Obtener los valores de T# para los articulos que usan al menos  un componente que se puede obtener con el proveedor P1*/
/*pi T#(ro C# IN (pi C# (ro P# = P1 (envios)))(envios))*/
SELECT DISTINCT T FROM envios WHERE C IN(SELECT C FROM envios WHERE P = 'P1');