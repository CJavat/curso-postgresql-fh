
create extension pgcrypto;

insert into "user" (username, pasword)
values ( 
	'melissa',
	crypt( '123456', gen_salt('bf') )
);

select * from "user";

select count(*) from "user" where username = 'daniel' and pasword = crypt( '123456', pasword );