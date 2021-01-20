set verify off;
set serveroutput on;


declare
	product_id number;
	supplier_id number;
	productt_stock number;
	product_price float;
	cursor c1 is
	select * from productinfo;
begin
	open c1;
	loop
		fetch c1 into product_id, supplier_id, product_price, productt_stock;
		exit when c1%notfound;
		if productt_stock < 30 then
			dbms_output.put_line(product_id || ' ' || supplier_id || ' ' || product_price || ' ' || productt_stock);
		end if;
	end loop;
	close c1;
end;
/