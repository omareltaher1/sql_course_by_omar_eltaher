SELECT 
	*
FROM
	dim_product
WHERE
	product_name IN ('Figure Method', 'Pressure That', 'Huge Change')
ORDER BY unit_price DESC;

-- LIKE

SELECT
	*
FROM
	dim_customer
WHERE
	first_name LIKE 'T__%'
LIMIT 5;

-- Grouping
SELECT
	category,
    AVG(unit_price),
    SUM(unit_price)
FROM
	dim_product
GROUP BY category;

-- ALIAS  
SELECT 
	category,
    AVG(unit_price) AS 'Average_unit_price'
FROM
	dim_product
GROUP BY category
LIMIT 5;

SELECT 
	category,
    AVG(unit_price) AS Average_unit_price
FROM
	dim_product
GROUP BY category
HAVING AVG(unit_price) > 500;
