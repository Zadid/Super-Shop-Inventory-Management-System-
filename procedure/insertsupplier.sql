create or replace procedure insertsupplier(sup_name in varchar2, prod_name in varchar2)
	is
	sup_id number;
	sup_email varchar2(20);
	sup_phone varchar2(20);
begin
	select supplier_id into sup_id from supplier@site_link2 where supplier_name = sup_name;
	insertproduct(prod_name, sup_id);
	EXCEPTION
	WHEN no_data_found THEN
		select count(supplier_id) into sup_id from supplier@site_link2;
		sup_id := sup_id + 1;
		sup_email := &supplier_email;
		sup_phone := &supplier_phone;
		insert into supplier@site_link2(supplier_id, supplier_name, supplier_email, supplier_phone) values(sup_id, sup_name, sup_email, sup_phone);
end insertsupplier;
/