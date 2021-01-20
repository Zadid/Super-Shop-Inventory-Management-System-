set serveroutput on;
set verify off;

declare
	supl_id number;
	temp number;
	sup_id number;
	pname varchar2(20);
	sup_name varchar2(20);
	prod_name varchar2(20);
	sup_email varchar2(20);
	sup_phone varchar2(20);
	sup_name1 varchar2(20);
	pro_st number;
	pro_price number;
	pro_id number;
	quantity number;
	price float;
	totalrow number;
	total number;
	
begin
	sup_name := &sup_name;
	prod_name := &product_name;
	quantity := &quantity;
	price := &price;
	
	select supplier_id into sup_id from supplier@site_link2 where supplier_name = sup_name;
	funcSupplier(sup_id, sup_name, prod_name, quantity, price, pro_id, supl_id, total);
	
	EXCEPTION
	WHEN no_data_found THEN 
		dbms_output.put_line('Supplier not found');
		select count(product_id) into pro_id from product@site_link2;
		pro_id := pro_id + 1;
		insert into product@site_link2(product_id, product_name) values(pro_id, prod_name);
		select count(supplier_id) into sup_id from supplier@site_link2;
		sup_id := sup_id + 1;
		sup_email := &supplier_email;
		sup_phone := &supplier_phone;
		insert into supplier@site_link2(supplier_id, supplier_name, supplier_email, supplier_phone) values(sup_id, sup_name, sup_email, sup_phone);
		insert into productinfo@site_link2(product_id, supplier_id, product_price, productt_stock) values(pro_id, sup_id, price, quantity);
		select count(supply_id) into supl_id from supply@site_link2;
		supl_id := supl_id + 1;
		insert into supply@site_link2(supply_id, supplier_id, product_id, quantity, price) values(supl_id, sup_id, pro_id, quantity, price);
	
	commit;	
		

	
end;
/