set serveroutput on;
set verify off;

declare 
	n_name varchar2(100);
	ans number;
	
begin
	n_name := '&y';
	ans := stockzero(n_name);
	if ans = 0 then
		dbms_output.put_line('Stock Zero');
	elsif ans > 0 then
		dbms_output.put_line('Stock Available');
	end if;
end;
/