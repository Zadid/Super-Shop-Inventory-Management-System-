create table Product(
	product_id int, 
	product_name varchar2(200),
	PRIMARY KEY (product_id)
	);
	
CREATE TABLE ProductInfo (
	product_id int, 
	product_price float,
	productt_stock int,
	PRIMARY KEY (product_id),
	FOREIGN KEY(product_id) REFERENCES Product(product_id));