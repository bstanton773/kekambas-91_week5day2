-- Create a table for our customers
CREATE TABLE customer(
	-- column_name DATA_TYPE,
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(100),
	phone_number VARCHAR(17),
	loyalty_member BOOLEAN
);

SELECT *
FROM customer;


-- Create a cart table
-- Setting up a foreign key is 2 steps: 1. Create a the column 2. Add foreign key to column
CREATE TABLE cart(
	cart_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL, -- NOT NULL means that this COLUMN cannot be EMPTY
	-- Syntax: FOREIGN KEY(column_in_domestic_table) REFERENCES foreign_table_name(column_in_foreign_table)
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

SELECT *
FROM cart;


-- Creating the join table between cart and product
CREATE TABLE cart_product(
	cart_id INTEGER NOT NULL,
	FOREIGN KEY(cart_id) REFERENCES cart(cart_id),
	product_id INTEGER NOT NULL
--	FOREIGN KEY(product_id) REFERENCES product(product_id) -- Cannot reference a table that does not exist!
);


-- Create the product table (without foreign keys right now)
CREATE TABLE product(
	product_id SERIAL PRIMARY KEY,
	prod_name VARCHAR(50),
	description VARCHAR(200),
	price NUMERIC(5,2),
	rating NUMERIC(2,1)
);

SELECT *
FROM product;

-- Alter the cart product table to add foreign key to column
ALTER TABLE cart_product 
ADD FOREIGN KEY(product_id) REFERENCES product(product_id);


-- Create table for seller
CREATE TABLE seller(
	seller_id SERIAL PRIMARY KEY,
	brand_name VARCHAR(50),
	description VARCHAR(200),
	email VARCHAR(50),
	rating NUMERIC(2,1)
);

-- Add column and foreign key to product table for relationship with seller
ALTER TABLE product
ADD COLUMN seller_id INTEGER NOT NULL;

ALTER TABLE product
ADD FOREIGN KEY(seller_id) REFERENCES seller(seller_id);

SELECT *
FROM product;

-- Create Category table
CREATE TABLE category(
	category_id SERIAL PRIMARY KEY,
	category_name VARCHAR(20),
	color VARCHAR(10),
	image VARCHAR(100)
);

SELECT *
FROM category;


-- Add foreign key from product to category
ALTER TABLE product
ADD COLUMN category_id INTEGER NOT NULL;

ALTER TABLE product
ADD FOREIGN KEY(category_id) REFERENCES category(category_id);


-- Rename a column e.g. email to email_address
ALTER TABLE seller 
RENAME COLUMN email TO email_address;

SELECT *
FROM seller;


-- Rename a table e.g. seller to brand
ALTER TABLE seller 
RENAME TO brand;


-- Create a test table
CREATE TABLE test(
	test_id SERIAL PRIMARY KEY,
	column_1 INTEGER,
	column_2 BOOLEAN
);

SELECT *
FROM test;

-- Delete a column from a table
ALTER TABLE test
DROP COLUMN column_1;


-- Remove a table completely
DROP TABLE IF EXISTS test;



