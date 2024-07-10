UPDATE
  users
SET
  first_name = ( SELECT SUBSTRING( name, 0, POSITION(' ' IN NAME )) ),
  last_name = ( SUBSTRING(name, POSITION(' ' IN NAME) + 1) );

SELECT * FROM users;