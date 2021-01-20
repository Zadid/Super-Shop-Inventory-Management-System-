create or replace procedure temp(pid in number, pname in varchar2, pprice in float, pstock in number, msg out varchar2, av in out number)
	is
begin

	select productt_stock into av from productinfo@site_link2 where product_id = (select product_id from product@site_link2 where product_name = pname);
	dbms_output.put_line(av);
	
end temp;
/