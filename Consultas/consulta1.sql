/*Obtener una lista de todos los productos indicando para cada uno su idfab, idproducto, descripción,
precio y precio con I.V.A. incluido (es el precio anterior aumentado en un 16%).*/
SELECT IDFAB, IDPRODUCTO, IDPRODUCTO, PRECIO, (PRECIO*1.6) AS PRECIOIVA FROM productos;