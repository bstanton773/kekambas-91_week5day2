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