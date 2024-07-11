SELECT NOW(),
	CURRENT_DATE,
	CURRENT_TIME,
	DATE_PART('hours', NOW()),
	DATE_PART('minutes', NOW()),
	DATE_PART('seconds', NOW()),
	DATE_PART('days', NOW()),
	DATE_PART('months', NOW()),
	DATE_PART('years', NOW());
	
SELECT * FROM employees
WHERE hire_date > DATE('1998-02-05')
ORDER BY hire_date DESC;

SELECT 
	MAX(hire_date) AS mas_nuevo,
	MIN(hire_date) AS primer_empleado
FROM employees;

SELECT 
	MAX(hire_date),
-- 	MAX(hire_date) + INTERVAL '1 days' AS days,
-- 	MAX(hire_date) + INTERVAL '1 month' AS months,
-- 	MAX(hire_date) + INTERVAL '1 year' AS years
	MAX(hire_date) + INTERVAL '1.1 year' + INTERVAL '1 day' AS years,
	date_part('year', now()),
-- 	MAKE_INTERVAL( YEARS := 23 )
	MAKE_INTERVAL( YEARS := date_part('year', now())::INTEGER ),
	MAX(hire_date) + MAKE_INTERVAL( YEARS := 23 )
FROM employees;


SELECT 
	hire_date,
	MAKE_INTERVAL( YEARS:= 2024 - EXTRACT( YEARS FROM hire_date )::INTEGER ),
	MAKE_INTERVAL( YEARS:= DATE_PART('years', CURRENT_DATE)::INTEGER - EXTRACT( YEARS FROM hire_date )::INTEGER )
FROM employees
ORDER BY hire_date DESC;



SELECT 
	hire_date,
	hire_date + INTERVAL '24 years'
FROM 
	employees;

UPDATE 
	employees
SET 
	hire_date = hire_date + INTERVAL '24 years';


SELECT 
	first_name, 
	last_name, 
	hire_date,
	CASE 
		WHEN hire_date > NOW() - INTERVAL '1 year' THEN '1 año o menos'
		WHEN hire_date > NOW() - INTERVAL '3 year' THEN 'De 1 a 3 años'
		WHEN hire_date > NOW() - INTERVAL '6 year' THEN 'De 3 a 6 años'
		ELSE ' Más de 6 años'
	END AS rando_antiguedad
FROM 
	employees
ORDER BY
	hire_date DESC;


