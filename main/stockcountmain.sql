set serveroutput on;
set verify off;

declare 
	n_name varchar2(100);
	ans number;
	
begin
	n_name := '&y';
	ans := stockcount(n_name);
	dbms_output.put_line(n_name || ' ' || ans);
end;
/