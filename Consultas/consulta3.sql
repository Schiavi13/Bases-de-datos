/*Listar de cada empleado su nombre, no de días que lleva trabajando en la empresa y su año de
nacimiento (suponiendo que este año ya ha cumplido años).*/
SELECT NOMBRE, (TO_DAYS(CURDATE())-TO_DAYS(CONTRATO)) AS "Dias trabajando", 
(YEAR(CURDATE())-EDAD) AS "Ano de nacimiento" FROM empleados;