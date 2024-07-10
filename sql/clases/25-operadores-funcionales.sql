SELECT
    id,
    UPPER(name) AS upper_name,
    LOWER(name) AS lower_name,
    LENGTH(name) AS length_name,
    (20 * 2) AS constante,
    '*'||id||' - '||name||'*',
    CONCAT('*', id, ' - ', name, '*'),
    name
FROM
    users;