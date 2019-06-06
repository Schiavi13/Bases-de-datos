/*Obtener todos los valores de C# de los componentes tales que ningun otro componente tenga un valor de peso inferior*/
/*pi C# (ro peso=MIN(peso) (componentes))*/
SELECT C FROM componentes WHERE peso =
(SELECT MIN(peso) FROM(componentes));