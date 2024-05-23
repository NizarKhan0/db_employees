CREATE TABLE companies

(
    company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number VARCHAR(255),
	PRIMARY KEY (company_id),
	UNIQUE KEY (headquarters_phone_number)
);

DROP TABLE companies;

-- guna alter pun boleh-- 

CREATE TABLE companies
(
    company_id INT AUTO_INCREMENT,
    company_name VARCHAR(255) NOT NULL,
    headquarters_phone_number VARCHAR(255),
	PRIMARY KEY (company_id)
);

ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;

ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;

ALTER TABLE companies
MODIFY headquarters_phone_number VARCHAR(255) NOT NULL;

INSERT INTO companies (company_name, headquarters_phone_number)
VALUES ('Megah Holding','0123456789');

SELECT * FROM companies;