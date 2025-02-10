

-- Unidad didáctica 4. Realización de consultas.
-- Ejemplos de utilización de operadores en sentencias SELECT.
-- Base de datos utilizada: Oposiciones.

#Base de datos utilizada: Departamentos.
use departamentos;
#4. Mostrar de cada empleado su número, nombre, salario y una columna calculada que
#sea la suma del salario y la comisión.

SELECT empleado.NumeroEmpleado, empleado.Nombre, empleado.Salario,  SUM(empleado.Salario + empleado.Comision) 
as Total from empleados;

#5. Mostrar los empleados del departamento 2 que tienen un salario superior a 1000 euros.

SELECT * from empleados WHERE Departamento = 2 and Salario > 1000;


#6. Mostrar todos los datos de cada departamento y una columna nueva en la que se
#muestre el 25% del presupuesto del departamento.

SELECT *, presupuesto * 0.25 AS presupuesto_25
FROM departamentos;

#7. Mostrar los datos de los empleados cuyo nombre termina en Z.

SELECT * FROM empleados WHERE Nombre like '%Z';