create or replace procedure updateproduct(pid in number, pname in varchar2, pprice in float, pstock in number, msg in out varchar2, available in out number)
	is
	
begin
	 
	update productinfo@site_link2
	set productt_stock = productt_stock + pstock
	where product_id = pid;
			
	
end updateproduct;
/