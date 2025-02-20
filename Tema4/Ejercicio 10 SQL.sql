#Realización de consultas. Recurso 8.
#Consultas correlacionadas.

#Base de datos utilizada: NBA.
	USE nba;


#1. Mostrar los jugadores cuyo peso es superior a la media de los pesos de su equipo.
	SELECT * FROM jugadores j WHERE peso > ( SELECT avg(peso) FROM jugadores jj WHERE jj.Nombre_equipo = j.Nombre_equipo);


#2. Mostrar código de jugador, nombre, peso y peso medio de su equipo.
	SELECT j. * , ( SELECT avg(peso) FROM jugadores jj WHERE jj.Nombre_equipo = j.Nombre_equipo) AS PesoMedioEquipo
    FROM jugadores j  ORDER BY Nombre_Equipo;
 

#Base de datos: Departamentos.
	USE departamentos;

/*3. Mostrar número de empleado, nombre, salario, y el mensaje “Salario superior a la
media de su dpto”, o “Salario no superior a la media de su dpto” según proceda.*/
	select NumeroEmpleado, Nombre, Salario,
	if (salario>(select avg(salario) from empleados ee
	where ee.departamento=e.Departamento),
	'Salario superior a la media de su dpto',
	'Salario no superior a la media de su dpto') as SalarioSuperiorMediaDpto
	from empleados e
 

#Base de datos: ClassicModels.
	USE ClassicModels;

/*4. Por cada pedido mostrar número, fecha de pedido, importe total y número de
productos distintos pedidos (contar) o el número de líneas del pedido.*/
	SELECT p.numeroPedido, p.fechaPedido,
	(select count(*) from detallespedidos dd
	where dd.numeroPedido=p.numeroPedido) as numeroProductos
	from pedidos p, detallespedidos d, productos pr
	where p.numeroPedido=d.numeroPedido AND
	pr.codigoProducto=d.codigoProducto



