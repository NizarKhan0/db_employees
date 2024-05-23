DROP TABLE sales, companies, items, customers;
DROP TABLE customers;

CREATE TABLE sales
(
	purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
    PRIMARY KEY(purchase_number)
);

ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;

ALTER TABLE sales
DROP FOREIGN KEY sales_ibfk_1;

CREATE TABLE items                                                                                                                              
(  
    item_code varchar(255),   
    item varchar(255),   
    unit_price numeric(10,2),   
    company_id varchar(255),
	 PRIMARY KEY (item_code)   
);  

CREATE TABLE companies   
(
    company_id varchar(255),   
    company_name varchar(255),  
    headquarters_phone_number int(12),
	PRIMARY KEY (company_id)   
);

CREATE TABLE customers
(
	customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT(12),
    PRIMARY KEY (customer_id)
);

ALTER TABLE customers
ADD UNIQUE KEY (email_address);

ALTER TABLE customers
DROP INDEX email_address;

ALTER TABLE customers
ADD COLUMN gender ENUM('M','F') AFTER last_name;

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

INSERT INTO customers (first_name, last_name, gender)
VALUES ('Zus', 'Coffe', 'F');

SELECT * FROM customers;

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT;





