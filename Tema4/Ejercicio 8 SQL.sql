#EJERCICIO 8 

#Base de datos: Oposiciones
use oposiciones;
/*1. Contar el número de opositores por ciudad.
Consulta típica de agrupar y contar. Al agrupar conseguimos meter en el mismo
saco (grupo) todos los opositores cuya ciudad coincida. Luego se aplica count a
cada grupo. Los opositores que tienen null en el campo ciudad forman también un
grupo.*/

SELECT opositores.CIUDAD, count(*) AS TotalPorCiudad FROM opositores GROUP BY opositores.CIUDAD
ORDER BY 1 asc; -- Se utiliza count(*), con asterisco porque si no , no me cuenta los null.


/*2. Contar el número de opositores por cada tribunal.
a. Sin incluir la tabla tribunales.*/
/*Al incluir tribunales se lleva a cabo un producto cartesiano, es necesario eliminar las filas
que no tienen relación con la cláusula Where, donde comparamos clave principal con clave
ajena de las tablas implicadas.*/

SELECT TRIBUNALOPOSITOR, count(*) AS TotalPoRtRIBUNAL FROM opositores GROUP BY TRIBUNALOPOSITOR
ORDER BY 2 ASC;


#b. Con la tabla tribunales.
SELECT tribunales.CODIGOTRIBUNAL, COUNT(opositores.DNI) AS Nopositores
	FROM tribunales INNER JOIN opositores ON tribunales.CODIGOTRIBUNAL = opositores.TRIBUNALOPOSITOR
	GROUP BY 1
	ORDER BY 2 DESC;
    
#c hay tribunales sin opositores?
    SELECT tribunales.CODIGOTRIBUNAL, COUNT(opositores.DNI) AS Nopositores
	FROM tribunales LEFT JOIN opositores ON tribunales.CODIGOTRIBUNAL = opositores.TRIBUNALOPOSITOR
	GROUP BY 1
	ORDER BY 2 DESC;
    
 
#3. Opositores con valor nulo en el campo tribunal.
SELECT * FROM opositores right join tribunales ON opositores.TRIBUNALOPOSITOR = tribunales.CODIGOTRIBUNAL 
WHERE opositores.TRIBUNALOPOSITOR is null;


/*4. Listado de opositores cuyo tribunal es el mismo que el del opositor GUTIERREZ
MARTIN, JUAN JOSE.
Hacemos una subselect para obtener el tribunal del opositor dado.*/

SELECT opositores.NOMBRE, opositores.TRIBUNALOPOSITOR FROM opositores WHERE opositores.TRIBUNALOPOSITOR =
(SELECT  opositores.TRIBUNALOPOSITOR FROM opositores WHERE opositores.NOMBRE = 'GUTIERREZ MARTIN, JUAN JOSE');
	
#5. Por cada examen, mostrar número de aprobados.
SELECT opositores.NOMBRE, notas.NOTA FROM examenes INNER JOIN notas 
ON examenes.CODIGOEXA = notas.CODIGOEXAMEN inner join opositores ON opositores.DNI  =
notas.DNIOPOSITOR where notas.NOTA >= 5 order by 1 asc;


/*6. Mostrar DNI, nombre y nota media de los siete opositores con mejor media.
Es necesario ordenar de forma descendente por la nota para colocar arriba los que más
nota tienen.*/

 SELECT opositores.DNI, opositores.NOMBRE, AVG(notas.NOTA) AS Media
    FROM opositores INNER JOIN notas ON opositores.DNI = notas.DNIOPOSITOR
    GROUP BY 1
    ORDER BY 3 DESC
    LIMIT 7;


#Base de datos: Soft.
use soft;
/*7. Sumar las unidades vendidas de cada producto. Incluir también los productos no
vendidos. Deben aparecer número de producto, nombre y suma de unidades.
Consulta con left join. La tabla de la izquierda es productos, por tanto se muestran
todos los productos, hayan sido vendidos o no.*/

SELECT productos.NUMEROPRODUCTO, productos.NOMBREPRODUCTO, SUM(detalle.UNIDADESVENDIDAS) AS TOTAL
FROM productos LEFT JOIN detalle ON productos.NUMEROPRODUCTO = detalle.NUMPRODUCTO
GROUP BY productos.NUMEROPRODUCTO
ORDER BY 3 DESC;  


/*8. Listado de productos (todos los campos) vendidos en la venta 1.
a. Sin mostrar las unidades vendidas. Con subselect.
b. Mostrando las unidades vendidas de cada producto. Ahora podría hacerse
con subselect pero serviría de poco. Es necesario cruzar productos y detalle.*/

	#a. Sin mostrar las unidades vendidas. Con subselect.
        
        SELECT productos.* FROM productos
        WHERE productos.NUMEROPRODUCTO IN (SELECT detalle.NUMPRODUCTO FROM detalle 
        WHERE detalle.NUMEROVENTA=1);
        
		#b. Mostrando las unidades vendidas de cada producto. Ahora podría hacerse
		#con subselect pero serviría de poco. Es necesario cruzar productos y detalle.
    
		SELECT productos.*, detalle.UNIDADESVENDIDAS
        FROM productos INNER JOIN detalle ON productos.NUMEROPRODUCTO = detalle.NUMPRODUCTO
        WHERE detalle.NUMEROVENTA = 1;
        
/*9. Calcular el importe total de cada venta. Mostrar número de venta e importe total.
No es necesario incluir la tabla ventas, ya que el número de la venta lo tenemos en detalle.
Para calcular el importe de una venta debemos sumar los productos unidades*precio.
Redondeamos para mostrar sólo dos decimales.+*/
SELECT detalle.NUMEROVENTA,  round(SUM(detalle.UNIDADESVENDIDAS * productos.PRECIO), 2) as Total
    FROM detalle INNER JOIN productos ON productos.NUMEROPRODUCTO = detalle.NUMPRODUCTO
    GROUP BY 1

/*10. Mostrar las ventas de Antonio Moreno cuyo importe supera los 500 euros. Deben
aparecer todas las columnas de ventas y el nombre del cliente.
Debemos incluir las tablas detalle, productos, ventas y clientes. Al incluir cuatro tablas,
deben eliminarse las filas sin relación que se crean. Para ello hacemos como siempre
comparar clave principalclave ajena de cada tabla implicada.*/