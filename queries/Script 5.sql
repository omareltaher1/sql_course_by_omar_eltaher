-- Transformations
-- 1) Numeric Transformations
USE first_database;
SELECT
	*
FROM
	dim_product
LIMIT 5;

SELECT
	product_name,
    unit_price * 0.90 AS discounted_price,
    unit_price + 5 AS Taxed_price,
    unit_price * unit_price AS multiplied_price,
    unit_price / 10 AS Fractioned_price,
    ROUND(unit_price,1) AS Rounded_price
FROM
	dim_product;
    
-- Data Transformarions
SELECT
	*
FROM
	dim_date
LIMIT 5;

SELECT
	date,
    now() AS 'current_timestamp',
    utc_date(),
    utc_time(),
    utc_timestamp()
FROM
	dim_date
LIMIT 5;

SELECT
	date,
    DAY(date),
    MONTH(date),
    YEAR(date),
    WEEKDAY(date),
    DAYNAME(date),
    DATEDIFF(DATE(utc_timestamp()),date) AS Total_days,
    ADDDATE(date,2),
    SUBDATE(date,2),
    CAST('01-01-2026' AS datetime)
FROM
	dim_date
LIMIT 5;

SELECT
	date,
    date_format(date,"%W %M %e %y") AS converted_date
FROM
	dim_date
LIMIT 5;


-- STRING Transfromations

SELECT
	*,
    CONCAT(first_name,' ', last_name) AS Full_name,
    CONCAT_WS(' ', first_name, last_name) AS Full_name1,
    REPEAT(first_name,2),
    LOWER(country),
    UPPER(country),
    REPLACE(email, "@", "%"),
    SUBSTRING(email,1,6),
    left(country,3),
    right(country,3),
    REVERSE(country)
FROM
	dim_customer
LIMIT 5;

-- TYPE casting

SELECT
	product_key,
    CAST(product_key AS CHAR(100))
FROM
	dim_product;