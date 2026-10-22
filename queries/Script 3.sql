CREATE TABLE customers
(
id INT PRIMARY KEY,
customer_name CHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL
);

INSERT INTO customers
VALUES
(101,'omar','aa'),
(102,'Mohamed','bb'),
(104, 'Eltaher','cc');




SELECT
	*
FROM
	orders_table
RIGHT JOIN
	customers
ON 
	customer_id = id
	