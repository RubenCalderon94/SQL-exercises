#EJERCICIO 9

#Base de datos utilizada: World.
use world;

#1. Mostrar nombre de continente y número de países de ese continente (contar).

SELECT country.Continent, count(country.Name) as NPaises from country 
group by 1 order by 1 asc;


#2. Mostrar la población máxima (número de habitantes máximo) de la tabla país.

	#1ª forma
		SELECT country.Name, country.Population From country
		order by 2 DESC
		limit 1;
        
	#2ª forma
		SELECT country.Name, country.Population From country
        WHERE country.Population = (SELECT 	MAX(country.Population) FROM country);
	

/*3. Mostrar los idiomas que se hablan en España (Spain) y el porcentaje que se habla
cada idioma. Ordenar de forma descendente por el campo porcentaje.*/

SELECT countrylanguage.Language,  countrylanguage.Percentage FROM countrylanguage inner join country
ON  countrylanguage.CountryCode = country.Code WHERE country.Name = 'Spain'
order by countrylanguage.Percentage des

/*4. Mostrar todas las ciudades de España (Spain) junto a su población. Debe mostrarse
nombre de país, de ciudad y población de esta.*/

SELECT city.Name, country.Name, country.Population from city inner join country 
ON city.CountryCode = country.Code where country.Name = 'Spain';

/*5. Mostrar todas las ciudades de España (Spain) junto a su población. Debe mostrarse
nombre de país, población de la país, nombre de ciudad y población de esta. Añadir
también el porcentaje que supone la población de la ciudad con respecto a la del país.*/

SELECT city.Name, country.Name, country.Population, round(((city.Population/country.Population)*100),2) as Porcentaje
from city inner join country 
ON city.CountryCode = country.Code where country.Name = 'Spain';


/*6. Mostrar datos de los 10 países con mayor población. Nombre de país, continente,
población.*/
SELECT country.Name, country.Continent, country.Population from country order by 3 desc limit 10;


#7. Mostrar los datos del país de mayor habitantes de Europa (Europe).
SELECT country.Name, country.Continent, country.Population from country where country.Continent = 'Europe' 
order by 3 desc 
limit 1;


#8. Mostrar la media de la esperanza de vida por continente.

SELECT country.Continent, avg(country.LifeExpectancy) as EsperanzaVida from country 
GROUP BY country.Continent order by 2 asc;


#9. Mostrar número de países por continente y región (contar).
SELECT country.Continent, country.Region, COUNT(*) AS NumeroPaises
    FROM country
    GROUP BY country.Continent, country.Region
    ORDER BY country.Continent, country.Region;


/*10. Mostrar la densidad de población de los países de Europa (Europe). La densidad de
población se mide en habitantes por superficie (habitantes/superficie).*/

	SELECT country.Name, (country.Population/country.SurfaceArea) as Densidad
    FROM country
    WHERE country.Continent = 'Europe'
    ORDER BY 2 DESC;