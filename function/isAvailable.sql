create or replace function isAvailable(pro_id in number, sup_id in number, price in float, quantity in number, sale_id in number)
	return number
	is

	cnt number;
begin
	cnt := 0;
	select productt_stock into cnt from productinfo@site_link2 where product_id = pro_id and supplier_id = sup_id;
	if quantity <= cnt then
		insert into sale@site_link2(sale_no, product_id, price, quantity) values(sale_id, pro_id, price, quantity);
		
		return cnt - quantity;
	else 
		dbms_output.put_line('Stock not available');
		return cnt;
	end if;
end isAvailable;
/