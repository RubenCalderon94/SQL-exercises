
-- Base de datos utilizada: Oposiciones.
USE oposiciones;
-- Orden de las cláusulas en la sentencia select:
 /*SELECT
 FROM
 WHERE
 GROUP
 BY
 HAVING
 ORDER BY
- A tener en cuenta:
- En la cláusula FROM debemos poner todas las tablas que intervengan en la
consulta aunque no se muestre ningún campo de ellas.
- Como norma general, utilizaremos tablas relacionadas entre sí para hacer
consultas. Evidentemente, si guardan datos sin relación el resultado de estas
consultas será incoherente.
- Las funciones de agregado (SUM, MAX, MIN…) suelen utilizarse sobre
grupos de filas, por lo tanto será necesario casi siempre utilizar GROUP BY.
Si no utilizamos GROUP BY el grupo será la tabla completa.*/

-- 1. Mostrar DNI, nombre, ciudad y teléfono de los opositores que sean de Badajoz.

SELECT DNI, NOMBRE, CIUDAD, TELEFONO FROM opositores WHERE CIUDAD = 'BADAJOZ';


/*2. Mostrar DNI, nombre y teléfono de los opositores que sean de Badajoz o Don
Benito. Ordenar los datos por ciudad y nombre de opositor.*/

SELECT DNI, NOMBRE, CIUDAD, TELEFONO FROM opositores WHERE CIUDAD = 'BADAJOZ' or CIUDAD = 'DON BENITO'
 ORDER BY CIUDAD, NOMBRE ASC; 

/*3. Mostrar DNI de opositor, nombre, código de examen, descripción del examen y su
nota. Sólo para las notas del opositor con DNI 11843671. Ordenar por código de examen. */

SELECT opositores.DNI, opositores.NOMBRE, notas.CODIGOEXAMEN, examenes.DESCRIPCIONEXA, notas.NOTA
FROM opositores INNER JOIN notas ON opositores.DNI = notas.DNIOPOSITOR INNER JOIN examenes
ON notas.CODIGOEXAMEN = examenes.CODIGOEXA
WHERE opositores.DNI = '11843671'
ORDER BY notas.CODIGOEXAMEN;

/*4. Mostrar DNI de opositor, nombre, código de examen, descripción y su nota. Sólo
para el examen con descripción “SUPUESTOS PRACTICOS (3)”.*/

SELECT opositores.DNI, opositores.NOMBRE, notas.CODIGOEXAMEN, examenes.DESCRIPCIONEXA, notas.NOTA
FROM opositores INNER JOIN notas ON opositores.DNI = notas.DNIOPOSITOR INNER JOIN examenes
ON notas.CODIGOEXAMEN = examenes.CODIGOEXA
WHERE examenes.DESCRIPCIONEXA ="SUPUESTOS PRACTICOS (3)"; 


/*5. Mostrar DNI de opositor, nombre, código de examen, descripción del examen y su
nota. Sólo para las notas de los opositores con la cadena “EZ” en su nombre y para
el examen con código 1. Ordenar por nombre de forma descendente (Z..A).*/

SELECT opositores.DNI, opositores.NOMBRE, notas.CODIGOEXAMEN, examenes.DESCRIPCIONEXA, notas.NOTA
FROM opositores INNER JOIN notas ON opositores.DNI = notas.DNIOPOSITOR INNER JOIN examenes
ON notas.CODIGOEXAMEN = examenes.CODIGOEXA
WHERE opositores.NOMBRE LIKE '%EZ%' AND examenes.CODIGOEXA = 1
ORDER BY opositores.NOMBRE DESC;


/*6. Mostrar DNI de opositor, nombre, código de examen, descripción del examen y su
nota. Sólo para las notas de los opositores del tribunal 4.
En esta consulta podemos mostrar el campo TribunalOpositor para comprobar el
resultado. No es necesario incluir la tabla Tribunales, ya que en Opositores tenemos
el campo Tribunalopositor.*/

SELECT opositores.DNI, opositores.NOMBRE, notas.CODIGOEXAMEN, examenes.DESCRIPCIONEXA, notas.NOTA
FROM opositores INNER JOIN notas ON opositores.DNI = notas.DNIOPOSITOR INNER JOIN examenes
ON notas.CODIGOEXAMEN = examenes.CODIGOEXA
WHERE opositores.TRIBUNALOPOSITOR = 4;

/*7. Mostrar DNI de opositor, nombre y la media de sus notas. Ordenar por DNI.
No es necesaria la tabla Exámenes.*/

SELECT opositores.DNI, opositores.NOMBRE, avg(notas.NOTA) AS Media
FROM opositores INNER JOIN notas ON opositores.DNI = notas.DNIOPOSITOR
GROUP BY opositores.DNI
ORDER BY opositores.DNI;


/*8. Mostrar el número de opositores por tribunal (contar). Debe aparecer una columna
con el número de tribunal en la forma “Tribunal nº 1” y otra columna con la cuenta.
La función CONCAT une o concatena cadenas de texto. Agrupamos por tribunal y
contamos las filas de cada grupo.*/

SELECT CONCAT_WS(" ", "Tribunal no", tribunales.CODIGOTRIBUNAL) AS Tribunales, COUNT(*) AS Cuenta
FROM tribunales INNER JOIN opositores ON tribunales.CODIGOTRIBUNAL = opositores.TRIBUNALOPOSITOR
GROUP BY Tribunales;


/*9. Mostrar el número de opositores por cada población, sólo para aquellas poblaciones
con más de 20 opositores.
Con Having eliminamos los grupos que no nos interesan.*/

SELECT opositores.CIUDAD, COUNT(*) AS NumeroOpositores
FROM opositores 
GROUP BY opositores.CIUDAD
HAVING NumeroOpositores > 20;

-- 10. Mostrar código de examen, descripción y media de sus notas.

SELECT  examenes.CODIGOEXA, examenes.DESCRIPCIONEXA, round(AVG(notas.NOTA), 2) as Media
FROM examenes INNER JOIN notas ON examenes.CODIGOEXA = notas.CODIGOEXAMEN
GROUP BY examenes.CODIGOEXA;

/*11. Mostrar número de opositores por cada tribunal (contar). Antes, y para probar esta
consulta, introducimos una nueva fila o registro en la tabla Tribunales. Este nuevo
tribunal no tendrá opositores asignados. Para insertar un nuevo registro utilizamos
esta sentencia: insert into tribunales values (6, 'Presidente', 'Secretario', 'Vocal1',
'Vocal2', 'Vocal3')
Con left join mostramos las filas de la tabla de la izquierda (Tribunales) que tienen relación
con filas de la tabla de la derecha (Opositores) y además las filas de Tribunales (Left) sin
opositores. Observa como el campo utilizado en Count es el DNI y no *, ya que si
hubiésemos utilizado * el resultado no sería correcto. Prueba y observa.*/


SELECT CONCAT_WS(" ", "Tribunal no", tribunales.CODIGOTRIBUNAL) AS Tribunales, COUNT(opositores.DNI) AS Cuenta
FROM tribunales LEFT JOIN opositores ON tribunales.CODIGOTRIBUNAL = opositores.TRIBUNALOPOSITOR
GROUP BY Tribunales;

SELECT tribunales.*, opositores.*
FROM tribunales LEFT JOIN opositores ON tribunales.CODIGOTRIBUNAL = opositores.TRIBUNALOPOSITOR;