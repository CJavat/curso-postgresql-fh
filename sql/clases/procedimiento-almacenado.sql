

select 
	count(*) 
from 
	"user" 
where 
	username = 'daniel' and pasword = crypt( '123456', pasword );
	
create or replace procedure user_login( user_name varchar, user_password varchar )
as $$
declare was_found boolean;

begin
	select count(*) into was_found 
	from "user" 
	where username = user_name and pasword = crypt( user_password, pasword );
	
	if( was_found = false ) then
		insert into session_failed( username, "when" ) values ( user_name, now() );
		COMMIT;
		raise exception 'Usuario o contraseña no son correctos';
	end if;
	
	update "user" set last_login = now() where username = user_name;
	commit;
	raise notice 'Usuario encontrado %', was_found;
end;
$$ language plpgsql;

call user_login( 'daniel', '123456 ' );


select * from session_failed;