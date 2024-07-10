SELECT
    COUNT(*),
    SUBSTRING( email, POSITION( '@' IN email ) + 1 ) AS domain
FROM
    users
GROUP BY SUBSTRING( email, POSITION( '@' IN email ) + 1 )
HAVING COUNT(*) > 1;

