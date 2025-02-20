# Bateria de ejercicios 12 (insert, update y delete)
#bd Jardineria
	use jardineria;
#1. Inserta una nueva oficina en Almería.
	INSERT INTO Oficinas(CodigoOficina, Ciudad, Pais, Region, CodigoPostal, Telefono, LineaDireccion1)
    VALUES("AL-01", "Almería", "España", "Andalucia", 04001, "+34 63698754", "C/San Blas, 33"); 
    
#2. Inserta un empleado para la oficina de Almería que sea representante de ventas.
	INSERT INTO Empleados(CodigoEmpleado, Nombre, Apellido1, Apellido2, Extension, Email, CodigoOficina, CodigoJefe, Puesto)
    VALUES(32, "Fulanito", "Perez", "Martin", "3333", "fulano@correo.es", "AL-01", 3, "Representante Ventas");

#3. Inserta un cliente que tenga como representante de ventas el empleado
# que hemos creado en el paso anterior.
	INSERT INTO Clientes(CodigoCliente, NombreCliente, NombreContacto, Telefono, Fax, LineaDireccion1, Ciudad, CodigoEmpleadoRepVentas)
    VALUES(39, "Agustin SL", "Arturo", "666666666", "6666666666", "asdflkjsdflñ", "Zafra", 32);

# 4. Inserte un pedido para el cliente que acabamos de crear, que contenga al
# menos dos productos diferentes.
	INSERT INTO Pedidos(CodigoPedido, FechaPedido, FechaEsperada, Estado, CodigoCliente)
    VALUES(129, '2025-02-17', '2025-02-19', "Pendiente", 39);
	
	INSERT INTO DetallePedidos VALUES(129, "FR-1", 2, 200, 1);
    INSERT INTO DetallePedidos VALUES(129, "FR-10", 3, 300, 2);
    
#5. Actualiza el código del cliente que hemos creado en el paso anterior y
#averigua si hubo cambios en las tablas relacionadas.
	UPDATE Clientes SET CodigoCliente = 40 where CodigoCliente=39;

#6. Borra el cliente y averigua si hubo cambios en las tablas relacionadas.

	DELETE FROM Clientes WHERE CodigoCliente = 39;
    
#7. Elimina los clientes que no hayan realizado ningún pedido.
	
    DELETE FROM Clientes WHERE CodigoCliente NOT IN (SELECT CodigoCliente
    FROM Pedidos);
    
    DELETE FROM Clientes WHERE CodigoCliente IN (SELECT CodigoCliente
    FROM Cientes LEFT JOIN Pedidos ON Clientes.CodigoCliente = Pedidos.CodigoCliente
    WHERE Pedidos.CodigoCliente is null);
    
# 8. Incrementa en un 20% el precio de los productos que no tengan pedidos.
	UPDATE Productos SET PrecioVenta = PrecioVenta *(1 +  0.2)
    WHERE CodigoProducto NOT IN (SELECT DISTINCT CodigoProducto FROM DetallePedidos);

	
#9. Borra los pagos del cliente con menor límite de crédito.
	DELETE FROM Pagos WHERE CodigoCliente = (SELECT CodigoCliente FROM Clientes
    WHERE LimiteCredito = (select MIN(LimiteCredito) FROM Clientes));
    
    DELETE FROM Pagos WHERE CodigoCliente = (SELECT CodigoCliente FROM Clientes
    ORDER BY LimiteCredito ASC
    LIMIT 1);
    
    
# 10. Establece a 0 el límite de crédito del cliente que menos unidades pedidas
# tenga del producto 11679.
		UPDATE Clientes SET LimiteCredito = 0
        WHERE CodigoCliente IN (SELECT CodigoCliente FROM Pedidos INNER JOIN DetallePedidos
        ON Pedidos.CodigoPedido = DetallePedidos.CodigoPedido
        WHERE DetallePedidos.Cantidad = (SELECT Min(Cantidad) FROM DetallePedidos
        WHERE CodigoProducto = '11679'));
        