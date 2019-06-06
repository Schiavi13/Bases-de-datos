/*Obtener los valores de P# para los proveedores que suministran para un articulo de SEVILLA o MADRID un componente ROJO*/
/*pi P# (ro (articulos.CIUDAD = SEVILLA OR articulos.CIUDAD = MADRID) AND COLOR = ROJO ((envios NAT JOIN articulos) NAT JOIN componentes))*/
SELECT P FROM envios INNER JOIN articulos ON envios.T = articulos.T
INNER JOIN componentes ON envios.C = componentes.C 
WHERE (articulos.CIUDAD = 'SEVILLA' OR articulos.CIUDAD = 'MADRID') AND componentes.COLOR = 'ROJO';