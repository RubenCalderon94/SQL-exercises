#EXAMEN 2 BBDD SEGUNDA EVALUACION

#Bases de datos: Bikestore22 
USE bikestore22;

#1. (1) Mostrar los empleados que han vendido por encima de los 2 millones. 
SELECT s.first_name, s.last_name, round(SUM(ori.quantity * ori.list_price ),2) AS Totalventas
FROM staffs s
INNER JOIN orders ord ON s.staff_id = ord.staff_id 
INNER JOIN order_items ori ON ord.order_id = ori.order_id
GROUP BY s.staff_id
HAVING TotalVentas > 2000000;

#2. (1) El/los cliente que mayor número de pedidos ha realizado en el año 2018. 
SELECT c.first_name, COUNT( ord.order_id) AS NumPedidos
FROM customers c
INNER JOIN orders ord ON c.customer_id = ord.customer_id
WHERE YEAR(ord.order_date) = 2018
GROUP BY c.customer_id
ORDER BY NumPedidos DESC
limit 2;-- Hay dos con los mismos Numeros de pedidos 


/*3. (1) Crea una vista que nos muestre el valor monetario de los productos que hay 
en cada tienda o almacén.*/
 CREATE VIEW valor_monetario_productos_por_almacen AS
 SELECT s.store_name, p.product_name, ROUND(SUM(sto.quantity * p.list_price),2) AS ValorMonetario
 FROM stores s INNER JOIN stocks sto ON s.store_id = sto.store_id
 INNER JOIN products p ON sto.product_id = p.product_id
 GROUP BY s.store_id, p.product_id;



/*4. (1) Crea una vista de los artículos más solicitados(vendidos) con su categoría, con 
los campos: Nombre del producto, Nombre de la categoría, Número de veces 
que se ha vendido, Dinero obtenido en el total de ventas de ese artículo concreto*/

CREATE VIEW articulos_mas_solicitados AS
SELECT p.product_name, c.category_name, SUM(ori.quantity) AS NumVecesVendido,
ROUND(SUM(ori.quantity *  ori.list_price),2) AS TotalVentas
FROM order_items ori 
INNER JOIN products p ON ori.product_id = p.product_id
INNER JOIN categories c ON p.category_id = c.category_id
GROUP BY p.product_id, c.category_id
ORDER BY NumVecesVendido DESC;


/*5. (1) Queremos aumentar el precio de los productos de la categoría Trek un 10%, 
pero solo los que están en la tienda Rowlett Bikes.*/

UPDATE products p 
INNER JOIN brands b ON p.brand_id = b.brand_id
INNER JOIN stocks sto ON p.product_id = sto.product_id
INNER JOIN stores s ON sto.store_id = s.store_id
SET p.list_price = p.list_price * 1.10 
WHERE b.brand_name= 'Trek'
AND s.store_name = 'Rowlett Bikes';  

#6. (1) Eliminar aquellos clientes que no han realizado ningún pedido en 2016  
DELETE FROM customers WHERE customer_id NOT IN (SELECT DISTINCT o.customer_id FROM orders o 
WHERE YEAR(o.order_date) = 2016);-- Da el error 1175, mysql esta programado asi por seguridad.


/*7. (1) ¿Cuál es el nombre del cliente que ha comprado al menos una bicicleta de 
cada marca disponible en la tienda? (no existe este cliente, pero realizar la 
consulta. */


/*8. (1) Mostrar los productos de la siguiente forma: Nombre del producto, Precio del 
producto, Media de precio de los productos de su categoría, y el texto "POR 
ENCIMA DE LA MEDIA" o en caso contrario "POR DEBAJO DE LA MEDIA" en caso 
de que supere esa media del precio o no. */
SELECT p.product_name, p.list_price, round((SELECT AVG (p2.list_price) FROM products p2
WHERE p2.category_id = p.category_id),2) AS MediaCategoria,
IF (p.list_price > (SELECT AVG(p2.list_price)
FROM products p2
 WHERE p2.category_id = p.category_id), 
  'POR ENCIMA DE LA MEDIA', 
	'POR DEBAJO DE LA MEDIA') AS Comparacion
FROM products p 
ORDER BY 1;



/*9. (1) ¿Cuál es el nombre del cliente que ha realizado la compra más grande (en 
términos de valor total) en un solo pedido? Pista: agrupar por dos campos */

SELECT c.first_name  FROM customers c 
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items ori ON o.order_id = ori.order_id
INNER JOIN products p ON ori.product_id = p.product_id
GROUP BY c.customer_id, o.order_id
ORDER BY SUM(ori.quantity * p.list_price) DESC
LIMIT 1;



/*10. (1) Mostrar los empleados de la siguiente forma: Nombre y apellido del 
empleado, tienda donde trabaja y nombre completo de su jefe(manager_id)con letras.*/

SELECT s.first_name AS NombreEmpleado, s.last_name AS ApellidoEmpleado,
sto.store_name , CONCAT(m.first_name, ' ', m.last_name) AS NombreJefe
FROM staffs s
INNER JOIN stores sto ON s.store_id = sto.store_id
LEFT JOIN staffs m ON s.manager_id = m.staff_id;

