create or replace procedure funcSupplier(sup_id in number, sup_name in varchar2, prod_name in varchar2, quantity in number, price in float, pro_id in out number, supl_id in out number, total in out number)
is

begin
	select product_id into pro_id from product@site_link2 where product_name = prod_name;
	funcProduct(pro_id, sup_id, price, quantity, total);
	EXCEPTION
	WHEN no_data_found THEN
		select count(product_id) into pro_id from product@site_link2;
		pro_id := pro_id + 1;
		insert into product@site_link2(product_id, product_name) values(pro_id, prod_name);
		insert into productinfo@site_link2(product_id, supplier_id, product_price, productt_stock) values(pro_id, sup_id, price, quantity);
		select count(supply_id) into supl_id from supply@site_link2;
		supl_id := supl_id + 1;
		insert into supply@site_link2(supply_id, supplier_id, product_id, quantity, price) values(supl_id, sup_id, pro_id, quantity, price);
end funcSupplier;
/