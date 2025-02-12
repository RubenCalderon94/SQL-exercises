#EJERCICO 7

#Base de datos utilizadas: NBA y Soft.
#NBA.
use nba;
/*1. Mostrar nombre de equipo y número de jugadores. Estas consultas son todas
iguales. Debemos agrupar por el campo que se indica y contar. En este caso
agrupamos por nombre_equipo. A cada grupo resultante se le aplica la función de
agregado, en este caso Count. Dentro de Count podemos poner cualquier campo,
pero no siempre obtendremos el mismo resultado. Suele ponerse la clave principal,
algún campo que no tenga nulos o el asterisco que cuenta las filas del grupo.*/

SELECT equipos.Nombre, count(jugadores.Nombre) as TotalJugadores FROM equipos inner join
jugadores ON equipos.Nombre = jugadores.Nombre_equipo GROUP BY jugadores.Nombre_equipo;



#2. Mostrar procedencia y número de jugadores. Igual que la anterior.
SELECT  jugadores.Procedencia,  count(jugadores.Nombre) as TotalJugadores FROM equipos inner join
jugadores ON equipos.Nombre = jugadores.Nombre_equipo GROUP BY jugadores.Procedencia;


/*3. Peso medio de los jugadores por equipo. Es del mismo estilo, agrupar por equipo y
aplicar la función, en este caso media (AVG).*/

SELECT jugadores.Nombre_equipo, avg(jugadores.Peso) as Media FROM jugadores group by jugadores.Nombre_equipo order by 1 asc;


/*4. Listado de jugadores que juegan en el mismo equipo que Pau Gasol. Consulta típica
de subselect. Como no sabemos a priori el equipo en el que juega este jugador,
debemos escribir una subselect que lo averigüe y pasar el resultado a la select
principal. La subselect se ejecuta antes y una sola vez.*/


Select Nombre_equipo FROM jugadores WHERE Nombre = 'Pau Gasol'; -- SERIA EL SUBSELECT PERO DEBEMOS REALIZARLO ANTES

SELECT Nombre_equipo, Nombre FROM jugadores WHERE Nombre_equipo = -- UTILIZAMOS EL SUBSELECT
(Select Nombre_equipo FROM jugadores WHERE Nombre = 'Pau Gasol');

#SOFT.
USE soft;
/*5. Mostrar los productos no vendidos. Los no vendidos son aquellos cuyo número no
aparece en la tabla detalle. Típica consulta de subselect.*/

SELECT * FROM productos left JOIN detalle ON productos.NUMEROPRODUCTO = detalle.NUMPRODUCTO WHERE UNIDADESVENDIDAS IS NULL;

/*6. Mostrar las ventas del cliente con código BERGS. Los datos a mostrar son código,
nombre, número de venta, fecha y pagado. Consulta basada en dos tablas, por tanto
debemos poner ambas tablas en el from y luego eliminar las filas no deseadas
comparando clave principal y clave ajena, es decir, los campos por los que se
relacionan estas tablas.*/

SELECT cliente.CODIGO, cliente.Nombre, ventas.NUMEROVENTA, ventas.FECHAVENTA, ventas.PAGADO from cliente 
inner join ventas on cliente.CODIGO = ventas.CLIENTE WHERE cliente.CODIGO = 'BERGS';



/*Otra forma de resolverla es con Inner Join:
7. Mostrar código, nombre, número de venta y fecha de ésta. Deben aparecer los clientes
con y sin ventas. Estas consultas son típicas de left o right join .
El left join hace que aparezcan las filas de la tabla de la izquierda (clientes) que tienen
ventas y las filas que no la tienen. Estas últimas presentan null en las columnas
numeroventa y fechaventa.*/

SELECT cliente.CODIGO, cliente.NOMBRE, ventas.NUMEROVENTA, ventas.FECHAVENTA
FROM cliente right JOIN ventas ON cliente.CODIGO = ventas.CLIENTE;

/*8. Contar el número de ventas por cada cliente. Deben aparecer los que tienen ventas
y los que no.
Típica de left join, agrupar y contar. Formamos grupos por código de cliente y contamos.
Ahora no podemos poner count(*) ya que nos diría que todos los clientes tienen al menos
una venta, por eso elegimos count(numeroventa), los clientes sin ventas tienen el valor 0 en
esta columna.*/

SELECT cliente.NOMBRE, count(NUMEROVENTA) AS TotalVnetas FROM cliente LEFT JOIN ventas ON cliente.CODIGO = ventas.CLIENTE 
GROUP BY cliente.CODIGO order by 2 asc;




