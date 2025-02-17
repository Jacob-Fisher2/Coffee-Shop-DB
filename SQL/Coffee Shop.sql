CREATE TABLE employee (
	employee_id		INT UNSIGNED,
	first_name		VARCHAR(30),
	last_name		VARCHAR(30),
	hire_date		DATE,
	job_title		VARCHAR(30),
	shop_id			INT UNSIGNED,
	PRIMARY KEY (employee_id),
	FOREIGN KEY (shop_id) REFERENCES coffeeShop(shop_id)
);

CREATE TABLE coffeeShop (
	shop_id		INT UNSIGNED,
	shop_name	VARCHAR(50),
	city		VARCHAR(50),
	state  		CHAR(2),
	PRIMARY KEY (shop_id)
);

CREATE TABLE coffee (
	coffee_id 		INT UNSIGNED,
	shop_id			INT UNSIGNED,
	supplier_id		INT UNSIGNED,
	coffee_name		VARCHAR(30),
	price_per_pound	NUMERIC(5,2),
	PRIMARY KEY (coffee_id),
	FOREIGN KEY (shop_id) REFERENCES coffeeShop(shop_id),
	FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
);

CREATE TABLE supplier (
	supplier_id			INT UNSIGNED,
	company_name		VARCHAR(50),
	country				VARCHAR(30),
	sales_contact_name	VARCHAR(60),
	email				VARCHAR(50) NOT NULL,
	PRIMARY KEY	(supplier_id)
);
