#EJERCICIOS DE FUNCIONES
#Base daros NEPTUNO
USE neptuno;

#1.-  introduciendo el identificador de un pedido, se pide obtener el cliente  y la fecha de envío.
#(opcion 1: no se puede retornar dos parametros, luego una opción sería hacer dos funciones)
DELIMITER $$
DROP FUNCTION IF EXISTS IdPedidoCliente $$
CREATE FUNCTION IdPedidoCliente(Ipedido int) -- creamos variable para pasar parametro de idpedido que la llamamos Ipedido
	RETURNS VARCHAR(30)-- Aqui vamos a guardar el nombre del cliente que nos devuelve por el Ipedido introducido
    DETERMINISTIC -- siempre devuelve el mismo valor 
    BEGIN
		DECLARE Cliente VARCHAR(30);-- declaramos la variable donde el resultado de la consulta , se guardara hay.
		SET Cliente = (SELECT clientes.NombreContacto FROM clientes INNER JOIN pedidos
        USING (IdCliente) WHERE pedidos.Idpedido = Ipedido );
        
        if(Cliente is null) then
			SET Cliente = "No se ha encontrado el pedido";
		end if;
        RETURN Cliente;
    END $$
DELIMITER ;
SELECT IdPedidoCliente(10310);-- pasamos como parametro el idpedidocliente
#segunda funcion -- LO MISMO PERO OBTENEMOS LA FECHA DE ENVIO EN VEZ DEL NOMBRE DEL CLIENTE COMO EN LA OPCION 1 DE ARRIAB
DELIMITER $$
DROP FUNCTION IF EXISTS IdPedidoCliente2 $$
CREATE FUNCTION IdPedidoCliente2(Ipedido int)
	RETURNS VARCHAR(30)
    DETERMINISTIC
    BEGIN
		DECLARE Cliente VARCHAR(30);
		SET Cliente = (SELECT pedidos.FechaEnvio FROM clientes INNER JOIN pedidos
        USING (IdCliente) WHERE pedidos.Idpedido = Ipedido );
        
        if(Cliente is null) then
			SET Cliente = "No se ha encontrado el pedido";
		end if;
        RETURN Cliente;
    END $$
DELIMITER ;
SELECT IdPedidoCliente2(10310);
#opcion 2: seria, realizar las dos consultas y concatenar los resultados.

#2.-  Introduciendo el id de un pedido, se pide obtener el nombre de la compañía de envíos, encargada de realizarlo.

DELIMITER $$
DROP FUNCTION IF EXISTS nombreCompania $$
CREATE FUNCTION nombreCompania(Ipedido int) -- introducimos el id pedido a buscar
	RETURNS VARCHAR(40)-- nos devuelve el nombre de la compañia
    DETERMINISTIC
    BEGIN
		DECLARE companiaE VARCHAR(40);-- aqui en la variable vamos a guardar el nombre de la compañia que nos devolvera por el id buscado
        SET companiaE = (SELECT companiaenvios.NombreCompania FROM companiaenvios INNER JOIN pedidos
        ON companiaenvios.IdCompaniaEnvios = pedidos.FormaEnvio WHERE pedidos.IdPedido = Ipedido);
        
        if(companiaE is null) then
			SET companiaE = "No se ha encontrado el pedido";
		end if;
        RETURN companiaE;
    END $$

DELIMITER ;
SELECT nombreCompania (10310);-- por este idpedido nos devolvera el nombre de la compañia


#3.- Introduciendo el nombre de un producto, obtener el nombre de la compañía proveedora.
DELIMITER $$ -- igual que el anterior pero introduciendo nombre del producto
DROP FUNCTION IF EXISTS nomProvee $$
CREATE FUNCTION nomProvee(Nproducto VARCHAR(30))
	RETURNS VARCHAR(40)
     DETERMINISTIC
    BEGIN
		DECLARE Nproveedor VARCHAR(40);
        SET Nproveedor = (SELECT proveedores.NombreCompania FROM proveedores INNER JOIN productos
        ON proveedores.IdProveedor = productos.IdProveedor WHERE productos.NombreProducto = Nproducto);
        
        if(Nproveedor is null) then
			SET Nproveedor = "No se ha encontrado el producto";
		end if;
        RETURN Nproveedor;
    END $$

DELIMITER ;
SELECT nomProvee('Sirope de regaliz');

#4.- Obtener el número de pedidos realizados desde un país introducido por teclado.

DELIMITER $$
DROP FUNCTION IF EXISTS numPedidos $$
CREATE FUNCTION numPedidos(Npais VARCHAR(30))
	RETURNS INT
     DETERMINISTIC
    BEGIN
		DECLARE NTotal INT;
        SET NTotal =0;
        SET NTotal =(SELECT COUNT(*) FROM pedidos
        WHERE pedidos.PaisDestinatario = pais);
        RETURN NTotal;
    END $$

DELIMITER ;
SELECT numPedidos('España');

#5.- Obtener la media de los días que tarda en entregar un pedido, una compañía de envíos, introducida por teclado como parámetro de entrada.

DELIMITER $$
DROP FUNCTION IF EXISTS mediaEnvios $$
CREATE FUNCTION mediaEnvios(empMensajeria VARCHAR(40))
	RETURNS VARCHAR(50)
    DETERMINISTIC
    BEGIN
		DECLARE MEDIA VARCHAR(50);
        SET MEDIA = (SELECT round(AVG(datediff(pedidos.FechaEntrega, pedidos.FechaEnvio)),2) FROM pedidos INNER JOIN companiaenvios
        ON pedidos.FormaEnvio= companiaenvios.IdCompaniaEnvios
        WHERE companiaenvios.NombreCompania = empMensajeria);
        
        IF (MEDIA IS NULL) THEN
			SET MEDIA = "No se ha encontrado la compañia";
		end if;
        RETURN MEDIA;
    END $$

DELIMITER ;
SELECT mediaEnvios('United Package');


#6.- ¿Cuántos productos están suspendidos de una categoría?
DELIMITER $$
DROP FUNCTION IF EXISTS suspendidos $$
CREATE FUNCTION suspendidos(cat VARCHAR(15))
	RETURNS VARCHAR(50)
    DETERMINISTIC
    BEGIN
		DECLARE suspen VARCHAR(50);
        SET suspen = (SELECT COUNT(*) FROM productos INNER JOIN categorias
        ON productos.IdCategoria = categorias.IdCategoria
        WHERE categorias.NombreCategoria = cat   AND productos.Suspendido = 1);
        
        IF (suspen =0) THEN
			SET suspen = "No se ha encontrado la categoria";
		end if;
        RETURN suspen;
    END $$

DELIMITER ;
SELECT suspendidos('Cerveza ho');

#Ejercicio extra prodecimientos, calcular la suma de los primeros n números pares. Donde n es un parametro de entrada en el procedimiento, suma
#es un parametros de salida.
DELIMITER $$
DROP PROCEDURE IF EXISTS ejemplo_bucle_loop$$
CREATE PROCEDURE ejemplo_bucle_loop(IN n INT, OUT suma INT)
BEGIN
	DECLARE contador INT;
	SET contador = 2;
	SET suma = 0;
	bucle: LOOP
		IF contador > n THEN
		LEAVE bucle;
		END IF;
		SET suma = suma + contador;
		SET contador = contador + 2;
	END LOOP;
END
$$
DELIMITER ;
CALL ejemplo_bucle_loop(10, @resultado);
SELECT @resultado;