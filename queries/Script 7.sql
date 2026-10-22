-- SUBQUIRIES

SELECT 
	*
FROM
	dim_product
WHERE
	unit_price > (SELECT AVG(unit_price) FROM dim_product) ;

