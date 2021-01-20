create or replace procedure funcProduct(pro_id in number, sup_id in number, price in float, quantity in number, total in out number)
is

begin
	update productinfo@site_link2 
	set product_price = price
	where product_id = pro_id and supplier_id = sup_id;
	
	select productt_stock into total from productinfo@site_link2 where product_id = pro_id and supplier_id = sup_id;
	
	
	update productinfo@site_link2
	set productt_stock = total + quantity
	where product_id = pro_id and supplier_id = sup_id;
	
	
end;
/