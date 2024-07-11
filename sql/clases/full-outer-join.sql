-- country a    - name, continentCode 
-- continent b  - name as continentName

SELECT a."name" as country, a.continent as continent_code, b."name" AS continent FROM country a
FULL OUTER JOIN continent b 
ON a.continent = b.code;


