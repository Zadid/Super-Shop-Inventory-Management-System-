create or replace function chk_stock(name in varchar2)
return number
is 
fname varchar2(20);
stock number;
select product_name into fname from ProductInfo@site_link2 where fname = name;
begin
	if(name = fname )
		return 1;
	else 
		return 0;


end chk_stock;
/