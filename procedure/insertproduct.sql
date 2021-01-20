create or replace procedure insertproduct(pid in number, pname in varchar2, category_idpprice in float, pstock in number, msg in out varchar2, available in out number)
	is
	available number;
begin
	
	available := -1;
	
	if available = -1 then
		insert into product@site_link2(product_id, product_name) values(pid, pname);
		insert into productinfo@site_link2(product_id, product_price, productt_stock) values(pid, pprice, pstock);
		dbms_output.put_line(msg);
	else 
		update productinfo@site_link2
		set productt_stock = productt_stock + 1
		where product_id = pid;	
	end if;
	
end insertproduct;
/