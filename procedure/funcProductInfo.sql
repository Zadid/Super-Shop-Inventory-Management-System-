create or replace procedure funcProductInfo(pro_id in number sup_id in number, price in float, quantity in number, prod_name in varchar2)
is
pro_id number;
begin
	insert into productinfo(product_id, supplier_id, product_price, productt_stock) values(pro_id, sup_id, price, quantity);
end;
/