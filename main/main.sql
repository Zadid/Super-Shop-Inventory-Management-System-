set serveroutput on;

declare
pname varchar2(20);
pid number;
pstock number;
pprice number;
name varchar2(20);
res number;
stock_total number;

begin 
	name := 'Sugar';
	res := function1(name);
	
	if(res = 1)
		stock_total = select sum(product_stock) from ProductInfo@site_link2 where product_name = name;
		dbms_output.put_line(stock_total);
		
	else
		dbms_output.put_line("Sorry the prodcut is out of stock :(")

end;
/