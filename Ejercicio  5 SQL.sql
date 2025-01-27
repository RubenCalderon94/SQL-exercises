

-- Unidad didáctica 4. Realización de consultas.
-- Ejemplos de utilización de operadores en sentencias SELECT.
-- Base de datos utilizada: Oposiciones.
use oposiciones;
-- 1. Mostrar las notas superiores a cuatro en el examen uno.

SELECT CODIGOEXAMEN, NOTA FROM notas HAVING CODIGOEXAMEN = 1 AND NOTA >4;

-- 2. Mostrar los DNI de opositor y codigo de examen de la tabla Notas de aquellos
-- opositores que tienen aprobado (nota mayor o igual que cinco) el examen 1 o 2.

SELECT * FROM notas HAVING  (CODIGOEXAMEN = 1 or CODIGOEXAMEN = 2) and  NOTA >=5;


-- 3. Mostrar las filas de la tabla Notas que tienen en el examen 3 una nota entre 7 y 9 ambas incluidas.

SELECT * FROM notas HAVING CODIGOEXAMEN = 3 AND (NOTAS 7 and 9);


-- Base de datos utilizada: Departamentos.
-- 4. Mostrar de cada empleado su número, nombre, salario y una columna calculada que
-- sea la suma del salario y la comisión.

-- 5. Mostrar los empleados del departamento 2 que tienen un salario superior a 1000
-- euros.
-- 6. Mostrar todos los datos de cada departamento y una columna nueva en la que se
-- muestre el 25% del presupuesto del departamento.
-- 7. Mostrar los datos de los empleados cuyo nombre termina en Z