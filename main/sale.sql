set serveroutput on;
set verify off;

declare
	sup_name varchar2(20);
	prod_name varchar2(20);
	quantity int;
	price float;
	pro_id number;
	sup_id number;
	available number;
	sale_id number;
begin
	prod_name := &product_name;
	sup_name := &sup_name;
	quantity := &quantity;
	price := &price;
	select count(sale_no) into sale_id from sale@site_link2;
	sale_id := sale_id + 1;
	select product_id into pro_id from product@site_link2 where product_name = prod_name;
	select supplier_id into sup_id from supplier@site_link2 where supplier_name = sup_name;
	available := isAvailable(pro_id, sup_id, price, quantity, sale_id);
	dbms_output.put_line(available);
	if available < 10 then
		dbms_output.put_line('Stock Low');
	end if;
	update productinfo@site_link2
	set productt_stock = available
	where product_id = pro_id and supplier_id = sup_id;
	
end;
/