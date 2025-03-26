

#BBDD HOSPITAL
USE hospital;

#1.	Crear un procedimiento almacenado que obtenga los enfermos nacidos entre dos fechas pasadas como parámetros.

DELIMITER $$
DROP PROCEDURE IF EXISTS EnfermoFechas $$
CREATE PROCEDURE EnfermoFechas (IN fechaIni DATETIME, IN fechaFin DATETIME)
BEGIN
	SELECT * FROM enfermo 
    WHERE enfermo.FECHA_NAC BETWEEN fechaIni AND fechaFin;
END $$

DELIMITER ;

CALL EnfermoFechas('1940-01-01', '1999-12-31');


#2.	Crea un procedimiento almacenado que sirva para dar de alta en la base de datos un nuevo enfermo cuando este acuda al hospital.

DELIMITER $$
DROP PROCEDURE IF EXISTS AltaEnfermo $$
CREATE PROCEDURE AltaEnfermo(IN INSCRIPCION_P INT, IN APELLIDO_P VARCHAR(20), IN DIRECCION_P VARCHAR(25), IN FECHA_NAC_P DATETIME,
IN SEXO_P CHAR(1), IN NSS_P INT)
BEGIN
	INSERT INTO enfermo VALUES(INSCRIPCION_P, APELLIDO_P, DIRECCION_P, FECHA_NAC_P, SEXO_P, NSS_P);

END $$

DELIMITER ;

CALL AltaEnfermo(33333, 'Gomez U.', 'Sevilla, 33', '2009-05-21', 'M', 123456789);


#3.	Para complementar al anterior habrá que crear un procedimiento almacenado que permita borrar un enfermo de la base de datos cuando se le dé el alta médica.

DELIMITER $$
DROP PROCEDURE IF EXISTS borrarEnfermo $$
CREATE PROCEDURE borrarEnfermo  ( IN INSCRIPCION INT, IN APELLIDO VARCHAR(20), IN DIRECCION VARCHAR(25) , IN FECHA_NAC DATETIME, IN SEXO CHAR(1), NSS INT, IN AltaoBaja CHAR(1))
BEGIN

INSERT INTO NuevoEnfermo VALUES (INSCRIPCION, APELLIDO, DIRECCION, FECHA_NAC, SEXO, NSS, AltaoBaja );

END $$
DELIMITER ; 

CALL NuevoEnfermo (215456, 'calderon', 'barriada nueva', '2021-10-14', 'V', 65413166, 'A')




#4.	Crear un procedimiento almacenado que muestre la suma total del salario para una función de la plantilla del hospital pasada como parámetro.
DELIMITER $$
DROP PROCEDURE IF EXISTS SumaSalario $$
CREATE PROCEDURE SumaSalario (IN func VARCHAR(10))
BEGIN
	SELECT CONCAT((SUM(SALARIO), "€")) AS TOTAL FROM plantilla 
    WHERE FUNCION = FUNC;

END $$

DELIMITER ;

CALL SumaSalario('Interno');


#5.	¿Qué modificación habría que incorporar en el anterior para poder ejecutar el procedimiento almacenado sin pasarle ningún parámetro y que devuelva el total del salario para toda la plantilla?

DELIMITER $$
DROP PROCEDURE IF EXISTS SumaSalario $$
CREATE PROCEDURE SumaSalario()
BEGIN
	SELECT CONCAT((SUM(SALARIO), "€")) AS TOTAL FROM plantilla 
    WHERE FUNCION = FUNC;

END $$

DELIMITER ;

CALL SumaSalario();

#6.	Crear un procedimiento almacenado que permita pasar un doctor de una especialidad a otra, pasando como parámetros la nueva especialidad y parte de su apellido.

DELIMITER $$
DROP PROCEDURE IF EXISTS CambiarEspecialidad $$
CREATE PROCEDURE CambiarEspecialidad (IN newEspecialidad VARCHAR(50), IN apellido_in VARCHAR(50))
BEGIN
	UPDATE doctor SET ESPECIALIDAD = newEspecialidad
    WHERE APELLIDO LIKE concat('%', apellido_in, '%');
END $$
DELIMITER ;

CALL CambiarEspecialidad('Pedriatria','Cabez')


#7.	Crear un procedimiento almacenado que calcule el total de enfermos y lo devuelva como valor.

DELIMITER $$
DROP PROCEDURE IF EXISTS TotalEnfermos $$
CREATE PROCEDURE TotalEnfermos(OUT num int)
BEGIN
	SET num = (SELECT COUNT(*) FROM ENFERMOS);
END $$
DELIMITER ;

CALL TotalEnfermos(@numero);
SELECT @numero;

#8.	Crear un procedimiento almacenado que calcule el número de camas ocupadas en un hospital dado su código como parámetro y,
# opcionalmente, un nombre de sala. Si este último no se proporciona deberá calcularse el total para todas las salas de las que disponga.

DELIMITER $$
DROP PROCEDURE IF EXISTS numCamasOcupadas $$
CREATE PROCEDURE numCamasOcupadas(IN hospital_in int, IN nomsala VARCHAR(20), OUT cocupadas int)
BEGIN
	if nomsala != null then
		SET cocupadas = (SELECT count(*) FROM ocupacion inner join sala ON ocupacion.SALA_COD = sala.SALA_COD
        WHERE ocupacion.HOSPITAL_COD = hospital_in AND sala.NOMBRE like(nomsala));
    else
		SET cocupadas = (SELECT count(*) FROM ocupacion WHERE HOSPITAL_COD = hospital_in);
        -- SELECT count(*) INTO coucupadas FROM ocupacion WHERE HOSPITAL_COD = hospital_in;
    end if;

END $$

DELIMITER ;

CALL numCamasOcupadas(13, 'Psiquiatrico', @ocupadas);
SELECT @ocupadas;
CALL numCamasOcupadas(22, null, @ocupadas);







