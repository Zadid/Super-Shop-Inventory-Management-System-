set verify off;
set serveroutput on;


declare
	product_id number;
	supplier_id number;
	productt_stock number;
	product_price float;
	product_name varchar2(20);
	cursor c1 is
	select * from productinfo@site_link2;
begin
	open c1;
	loop
		fetch c1 into product_id, supplier_id, product_price, productt_stock;
		exit when c1%notfound;
		if product_price >= 50 then
			dbms_output.put_line(product_id || ' ' || product_name || ' ' || supplier_id || ' ' || product_price || ' ' || productt_stock);
		end if;
	end loop;
	close c1;
end;
/