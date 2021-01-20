set serveroutput on;
set verify off;

declare
	sup_id number;
	sup_name varchar2(20);
	sup_email varchar2(20);
	sup_phone varchar2(20);
	sup_name1 varchar2(20);
	
begin
	sup_id := &supplier_id;
	sup_name := &supplier_name;
	sup_email := &supplier_email;
	sup_phone := &supplier_phone;
	select supplier_name into sup_name1 from supplier@site_link2 where supplier_name = sup_name;
	dbms_output.put_line('Data Found');
	EXCEPTION
	WHEN no_data_found THEN
		insertsupplier(sup_id, sup_name, sup_email, sup_phone);

	
end;
/