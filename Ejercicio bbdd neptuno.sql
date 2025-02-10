#Ejercicio base datos neptuno
use neptuno;

#1 Número de pedidos que se han realizado cada año.
SELECT year(pedidos.FechaPedido) as Año, count(*) as Npedidos from pedidos
group by 1
order by 1;

#2 Número de pedidos que se han realizado cada més del año 1997.
SELECT monthname(pedidos.FechaPedido) as MES, count(*) as Npedidos from pedidos
where year(pedidos.FechaPedido) = 1997
group by 1
order by 1;

#3 Enseña los pedidos con su total, número pedido, fecha pedido, cliente, total del pedido
# de Abril de 1997.

SELECT pedidos.IdPedido, pedidos.FechaPedido, clientes.NombreCompania, 
round(SUM((detallespedidos.Cantidad*detallespedidos.PrecioUnidad)-((detallespedidos.Cantidad*detallespedidos.PrecioUnidad)*detallespedidos.Descuento)),2) as Total
FROM pedidos INNER JOIN clientes ON pedidos.IdCliente = clientes.IdCliente
INNER JOIN detallespedidos ON pedidos.IdPedido = detallespedidos.IdPedido
WHERE pedidos.FechaPedido between '1997-04-01' AND '1997-04-30'
GROUP BY pedidos.IdPedido
ORDER BY 1;

#Cuanto se ha cobrado de los pedidos por cada mes del año 1997

SELECT month(pedidos.FechaPedido) as Mes, 
round(SUM((detallespedidos.Cantidad*detallespedidos.PrecioUnidad)-((detallespedidos.Cantidad*detallespedidos.PrecioUnidad)*detallespedidos.Descuento)),2) as Total
FROM pedidos INNER JOIN detallespedidos ON pedidos.IdPedido = detallespedidos.IdPedido
WHERE year(pedidos.FechaPedido) = 1997
GROUP BY 1;

# Los empleados y cuanto han vendido en el mes de abril del 1997

SELECT CONCAT_WS(" ", empleados.Nombre, empleados.Apellidos) as Empleado, round(SUM((detallespedidos.Cantidad*detallespedidos.PrecioUnidad)-((detallespedidos.Cantidad*detallespedidos.PrecioUnidad)*detallespedidos.Descuento)),2) as Total
FROM empleados INNER JOIN pedidos ON empleados.IdEmpleado = pedidos.IdEmpleado
INNER JOIN detallespedidos ON pedidos.IdPedido = detallespedidos.IdPedido
WHERE pedidos.FechaPedido between '1997-04-01' AND '1997-04-30'
GROUP BY 1
ORDER BY 2 DESC;
 
#El empleado que más ha vendido en el año 1997

SELECT CONCAT_WS(" ", empleados.Nombre, empleados.Apellidos) as Empleado, round(SUM((detallespedidos.Cantidad*detallespedidos.PrecioUnidad)-((detallespedidos.Cantidad*detallespedidos.PrecioUnidad)*detallespedidos.Descuento)),2) as Total
FROM empleados INNER JOIN pedidos ON empleados.IdEmpleado = pedidos.IdEmpleado
INNER JOIN detallespedidos ON pedidos.IdPedido = detallespedidos.IdPedido
WHERE year(pedidos.FechaPedido) = 1997
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;



