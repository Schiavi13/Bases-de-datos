/*Listar las cuatro líneas de pedido más caras (las de mayor importe).*/
SELECT * FROM pedidos ORDER BY  IMPORTE DESC LIMIT 4;