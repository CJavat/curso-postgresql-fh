-- Quiero que me muestren el país con más ciudades
-- Campos: Total de ciudades y el nombre del país
-- Usar INNER JOIN

SELECT COUNT(a.*) AS total_city,  b.name AS countries
FROM city a
INNER JOIN country b ON a.countrycode = b.code
GROUP BY b.name
ORDER BY total_city DESC
LIMIT 1;

SELECT * FROM city;
SELECT * FROM country;