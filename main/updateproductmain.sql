set serveroutput on;
set verify off;

declare
	msg varchar2(100);
	pid number;
	pname varchar2(100);
	pstock number;
	pprice float;
	av number;
	
begin
	av := -1;
	pid := &y;
	pname := '&pn';
	pstock := &p;
	pprice := &q;
	msg := 'Product added successfully';
	updateproduct(pid, pname, pprice, pstock, msg, av);
end;
/