#Ejercicio vistas: bd jardineria
USE jardineria;
/*1. Escriba una vista que se llame listado_pagos_clientes que muestre un
listado donde aparezcan todos los clientes y los pagos que ha realizado
cada uno de ellos. La vista deberá tener las siguientes columnas: nombre
y apellidos del cliente concatenados, teléfono, ciudad, pais, fecha_pago,
total del pago, id de la transacción*/
CREATE OR REPLACE VIEW listado_pagos_clientes AS
SELECT concat(clientes.NombreCliente, " ", clientes.ApellidoContacto ) as Clientes,
clientes.Telefono, clientes.Ciudad, clientes.Pais, pagos.FechaPago, pagos.Cantidad,
pagos.IDTransaccion FROM clientes INNER JOIN pagos ON clientes.CodigoCliente = pagos.CodigoCliente
order by 1;

/*2. Escriba una vista que se llame listado_pedidos_clientes que muestre un
listado donde aparezcan todos los clientes y los pedidos que ha realizado
cada uno de ellos. La vista deberá tener las siguientes columnas: nombre
y apellidos del cliente concatendados, teléfono, ciudad, pais, código delCodigoCliente
pedido, fecha del pedido, fecha esperada, fecha de entrega y la cantidad
total del pedido, que será la suma del producto de todas las cantidades
por el precio de cada unidad, que aparecen en cada línea de pedido.*/
CREATE OR REPLACE VIEW listado_pedidos_clientes AS
SELECT concat(clientes.NombreCliente, " ", clientes.ApellidoContacto ) AS Clientes,
clientes.Telefono, clientes.Ciudad, clientes.Pais, pedidos.CodigoPedido, pedidos.FechaPedido,
pedidos.FechaEsperada, pedidos.FechaEntrega, sum(detallepedidos.Cantidad* detallepedidos.PrecioUnidad) AS cantidadTotal
FROM clientes INNER JOIN pedidos ON clientes.CodigoCliente = pedidos.CodigoCliente INNER JOIN detallepedidos ON 
pedidos.CodigoPedido = detallepedidos.CodigoPedido GROUP BY detallepedidos.CodigoPedido ORDER BY 1;


/*3. Utilice las vistas que ha creado en los pasos anteriores para devolver un
listado de los clientes de la ciudad de Madrid que han realizado pagos.*/
CREATE OR REPLACE VIEW listado_pagos_clientes_Madrid AS
SELECT concat(clientes.NombreCliente, " ", clientes.ApellidoContacto ) as Clientes,
clientes.Telefono, clientes.Ciudad, clientes.Pais, pagos.FechaPago, pagos.Cantidad,
pagos.IDTransaccion FROM clientes INNER JOIN pagos ON clientes.CodigoCliente = pagos.CodigoCliente
WHERE clientes.Ciudad = 'Madrid'
order by 1;


/*4. Utilice las vistas que ha creado en los pasos anteriores para devolver un
listado de los clientes que todavía no han recibido su pedido.*/
CREATE OR REPLACE VIEW listado_pedidos_clientes_pendiente AS
SELECT concat(clientes.NombreCliente, " ", clientes.ApellidoContacto ) AS Clientes,
clientes.Telefono, clientes.Ciudad, clientes.Pais, pedidos.CodigoPedido, pedidos.FechaPedido,
pedidos.FechaEsperada, pedidos.FechaEntrega, pedidos.Estado, sum(detallepedidos.Cantidad* detallepedidos.PrecioUnidad) AS cantidadTotal
FROM clientes INNER JOIN pedidos ON clientes.CodigoCliente = pedidos.CodigoCliente INNER JOIN detallepedidos ON 
pedidos.CodigoPedido = detallepedidos.CodigoPedido
WHERE pedidos.Estado = 'Pendiente'
GROUP BY 1,2,3,4,5,6,7,8,9 ORDER BY 1;

/*5. Utilice las vistas que ha creado en los pasos anteriores para calcular el
número de pedidos que se ha realizado cada uno de los clientes.*/
CREATE OR REPLACE VIEW listado_pedidos_cada_cliente AS
SELECT Clientes, COUNT(CodigoPedido) AS NumeroDePedidos
FROM listado_pedidos_clientes
GROUP BY Clientes;

/*6. Utilice las vistas que ha creado en los pasos anteriores para calcular el
valor del pedido máximo y mínimo que ha realizado cada cliente.*/
CREATE OR REPLACE VIEW listado_pedidos_max_min_cada_cliente AS
SELECT Clientes, max(cantidadTotal) AS PrecioUnidadMax,
min(cantidadTotal) AS PrecioUnidadMin
FROM listado_pedidos_clientes
GROUP BY Clientes;


/*7. Modifique el nombre de las vista listado_pagos_clientes y asígnele el
nombre listado_de_pagos. Una vez que haya modificado el nombre de la
vista ejecute una consulta utilizando el nuevo nombre de la vista para
comprobar que sigue funcionando correctamente.*/

#MODIFICAMOS EL NOMBRE
RENAME TABLE  listado_pagos_clientes TO  listado_de_pagos;

#EJECUTAMOS CON EL NUEVO NOMBRE
SELECT * FROM listado_de_pagos;

#8. Elimine las vistas que ha creado en los pasos anteriores
DROP VIEW  listado_de_pagos, listado_pagos_clientes_madrid, listado_pedidos_cada_cliente, listado_pedidos_clientes,
listado_pedidos_clientes_pendiente;

