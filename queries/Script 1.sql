-- 1) Create
CREATE TABLE customers
(
	customer_id INT,
    customer_name CHAR(100)
);

-- 2) INSERT

INSERT INTO Customers
VALUES
(1, 'Mohamed'),
(2, 'Ali'),
(3, 'Lamiaa');


-- 3) SELECT 

SELECT 
	* 
FROM
	Customers;
-- ALTER 
ALTER TABLE Customers
ADD COLUMN phone_number INT;

-- DROP 
DROP TABLE customers;

-- TRUNCATE
CREATE TABLE customers
(
	customer_id INT PRIMARY KEY,
    customer_name CHAR(100) NOT NULL
);

SELECT 
	*
FROM 
	customers;
    
INSERT INTO customers
VALUES
(1, 'Mohamed'),
(2, 'Ali'),
(3, 'Lamiaa');

SELECT 
	*
FROM 
	customers;
    
TRUNCATE customers


