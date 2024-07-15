create or replace procedure insert_region_proc( int, varchar )
as $$

begin

	insert into regions( region_id, region_name )
	values( $1, $2 );
	
	raise notice 'Variable 1: %, %', $1, $2;

-- 	rollback;
	commit;
end;

$$ language plpgsql;


call insert_region_proc(5, 'Central America');


select * from regions;