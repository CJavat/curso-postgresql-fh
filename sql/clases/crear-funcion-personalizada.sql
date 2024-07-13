create
or replace function comment_replies( id integer ) 
returns varchar
as
$$
declare result json;

begin
	select 
		json_agg( json_build_object(
	  	'user', comments.user_id,
	  	'comment', comments.content
		)) into result
	from comments where comment_parent_id = id;
	
	return result;
	
end;
$$
language plpgsql;


select comment_replies(2);