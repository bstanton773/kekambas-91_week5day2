SELECT *
FROM customer;

-- Add some customer info
INSERT INTO customer(
	first_name,
	last_name,
	address,
	phone_number,
	loyalty_member 
) VALUES (
	'Brian',
	'Stanton',
	'555 Circle Drive',
	'+1 (555) 555-5555',
	true
);

SELECT * FROM customer;

INSERT INTO customer(
	address,
	last_name,
	phone_number,
	loyalty_member,
	first_name
) VALUES (
	'444 Square Rd',
	'Smith',
	'+44(444) 444-4444',
	FALSE,
	'John'
);

SELECT * FROM customer;


SELECT *
FROM brand;

-- Insert Multiple values into a table
INSERT INTO brand(
	brand_name,
	description,
	email_address
) VALUES (
	'Cup Inc',
	'We make the best cups for holding your liquids',
	'cups@cups.com'
),(
	'Pens Unltd',
	'Write for days and do not worry about runnnig out of ink',
	'pens@pens.org'
);

SELECT *
FROM brand;

INSERT INTO category VALUES (1, 'Office Supplies', '#033dfc', 'https://via.placeholder.com/150');

SELECT *
FROM category;


-- Inserting data into a table with a Foreign Key
INSERT INTO product(
	prod_name,
	description,
	price,
	rating,
	seller_id,
	category_id
) VALUES (
	'Big Blue Cup',
	'Exactly what it sounds like',
	9.99,
	5.0,
	1,
	1
);


SELECT *
FROM product;


SELECT *
FROM customer;

-- Update row(s) of column(s) in our table
-- Customer id 1 moves to 111 First Street
UPDATE customer 
SET address = '123 Real Street', loyalty_member = TRUE
WHERE customer_id = 2;


SELECT *
FROM customer;


-- Add some customer info
INSERT INTO customer(
	first_name,
	last_name,
	address,
	phone_number,
	loyalty_member 
) VALUES (
	'Jeff',
	'Stanton',
	'555 Circle Drive',
	'+1 (555) 555-5555',
	true
),('Ally', 'Allerson', '345 Alley Blvd', '+1 (344) 322-2344', false);

SELECT *
FROM customer;

-- Delete rows from a table
DELETE FROM customer
WHERE first_name LIKE 'J%';


SELECT *
FROM customer;


DELETE FROM customer;