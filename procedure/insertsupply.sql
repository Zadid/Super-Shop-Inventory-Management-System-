create or replace procedure insertsupply(supply_id int,
	supplier_id int, 
	product_id int, 
	category_id int, 
	quantity int,
	price float,)
	is
begin
	insert into supply@site_link2(supply_id, supplier_id, product_id, category_id, quantity, price) 
	values(supply_id, supplier_id, product_id, category_id, quantity, price);
end insertsupply;
/