create table sale(
	sale_no int,
	product_id int, 
	quantity int,
	PRIMARY KEY (sale_no),
	FOREIGN KEY(product_id) REFERENCES Product(product_id));
	
commit;