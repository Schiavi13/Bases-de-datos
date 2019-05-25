/*Obtener las oficinas ordenadas por orden alfabético de región y dentro de cada región por ciudad, si
hay más de una oficina en la misma ciudad, aparecerá primero la que tenga el número de oficina mayor.*/
SELECT * FROM oficinas ORDER BY REGION, CIUDAD, OFICINA DESC;