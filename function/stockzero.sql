create or replace function stockzero(productname in varchar2)
	return number
	is
	
	n_stock number := 0;
	
begin
	select productt_stock into n_stock from productinfo@site_link2 where product_id = (select product_id from product@site_link2 where product_name = productname);
	return n_stock;
end stockzero;
/