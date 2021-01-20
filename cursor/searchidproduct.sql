set verify off;
set serveroutput on;


declare
	product_id number;
	prod_name varchar2(20);
	cursor c1 is
	select product_name into prod_name from product@site_link2 where product_id = product_id;
begin
	product_id := &product_id;
	open c1;
	loop
	fetch c1 into product_id, supplier_id, product_price, productt_stock;
		exit when c1%notfound;
		dbms_output.put_line(prod_name);
	EXCEPTION
	WHEN no_data_found THEN 
	dbms_output.put_line('No data found');
	end loop;
	close c1;
end;
/