CREATE DATABASE IF NOT EXISTS Coffee Shop;

-- Create required tables from Coffee Shop ERD

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
	price_per_pound		NUMERIC(5,2),
	PRIMARY KEY (coffee_id),
	FOREIGN KEY (shop_id) REFERENCES coffeeShop(shop_id),
	FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
);

CREATE TABLE supplier (
	supplier_id			INT UNSIGNED,
	company_name			VARCHAR(50),
	country				VARCHAR(30),
	sales_contact_name		VARCHAR(60),
	email				VARCHAR(50) NOT NULL,
	PRIMARY KEY	(supplier_id)
);

-- Insert Data
INSERT INTO employee (employee_id, first_name, last_name, hire_date, job_title, shop_id) VALUES
(100, 'Elle', 'Yu', '1963-03-23', 'Owner', 01),
(101, 'Matfey', 'Byrnes', '2000-11-14', 'Roaster', 01),
(102, 'Renata', 'Hidaka', '2004-06-12', 'Barista', 02),
(103, 'Sunil', 'Gynt', '2007-12-04', 'Roaster', 03),
(104, 'Tahlia', 'Wilkins', ' 2010-03-17', 'Barista', 01);

INSERT INTO coffeeShop (shop_id, shop_name, city, state) VALUES
(01, 'Boxcar', 'Boulder', 'CO'),
(02, 'Prodigy', 'Denver', 'CO'),
(03, 'Huckleberry', 'Denver', 'CO'),
(04, 'Cafe Corazon', 'Kansas City', 'MO');

INSERT INTO coffee (coffee_id, shop_id, supplier_id, coffee_name, price_per_pound) VALUES
(01, 01, 1000, 'Blue Moon', 8.00),
(02, 03, 1001, 'La Magnolia', 6.95),
(03, 02, 1001, 'Decaf Ethiopian', 8.50),
(04, 04, 1002, 'Oberon', 6.35),
(05, 01, 1001, 'Peaberry', 7.25);

INSERT INTO supplier (supplier_id, company_name, country, sales_contact_name, email) VALUES
(1000, 'Royal Coffee', 'Ethiopia', 'Gustavo Kolen', 'gkolen@royal.com'),
(1001, 'Genuine Origin', 'United States', 'Sophia Huff', 'sophiaHuff@genuine.com'),
(1002, 'Bellwether', 'Costa Rica', 'Wanda Gage', 'wgage@bellwether.com');

-- Create views
