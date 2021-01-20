create or replace function stockcount(productname in out varchar2)
	return number
	is
	n_stock number;
	
begin
	n_stock := -1;
	select productt_stock into n_stock from productinfo@site_link2 where product_id = (select product_id from product@site_link2 where product_name = productname);
	return n_stock;
	
end stockcount;
/