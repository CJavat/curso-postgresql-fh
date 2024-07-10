SELECT
    name,
    SUBSTRING(name, 0, 5),
    POSITION(' ' IN NAME),
    SUBSTRING(name, 0, POSITION(' ' IN name)) AS first_name,
    SUBSTRING(name, POSITION(' ' IN name) + 1) AS last_name,
    TRIM(SUBSTRING(name, POSITION(' ' IN name))) AS trim_name
FROM
    users;