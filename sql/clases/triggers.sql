call user_login( 'daniel', '123456' );

create or replace trigger create_session_trigger after update on "user"
for each row when(old.last_login is DISTINCT from new.last_login) execute function create_session_log();

create or replace function create_session_log()
returns trigger as $$
begin

	insert into "session" ( user_id, last_login ) values ( new.id, now() );
	
	return new;

end;
$$ language plpgsql;

select * from session_failed;