drop table Supplier;
create table Supplier(
	supplier_id int, 
	supplier_name varchar2(20),
	supplier_email varchar2(20),
	supplier_phone varchar2(20),
	PRIMARY KEY (supplier_id)
);
drop table Category;
create table Category(
	category_id int,
	category_name varchar2(20),
	PRIMARY KEY (category_id)
	);
drop table Supply;
create table Supply(
	supply_id int,
	supplier_id int, 
	product_id int, 
	category_id int, 
	quantity int,
	price float,
	PRIMARY KEY (supply_id),
	FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
	FOREIGN KEY (product_id) REFERENCES Product(product_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id)
	);