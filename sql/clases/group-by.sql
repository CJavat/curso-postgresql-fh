SELECT * FROM users;

SELECT
    COUNT(*) AS total_users,
    MIN(followers) AS min_followers,
    MAX(followers) AS max_followers,
    ROUND( AVG(followers) ) AS avg_followers,
    SUM(followers) / COUNT(*) AS avg_manual
FROM
    users;

SELECT
    first_name,
    last_name,
    followers
FROM
    users
WHERE
    followers = 4
    OR followers = 4999;
    
SELECT
    COUNT(*), followers
FROM
    users
WHERE
    followers = 4
    OR followers = 4999
GROUP BY followers;