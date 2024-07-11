SELECT * FROM continent WHERE name LIKE '%America'
UNION
SELECT * FROM continent WHERE code IN (3,5)
ORDER BY name ASC;