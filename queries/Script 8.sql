-- CTEs [ common Table Expressions ]

WITH cte_table AS
(
SELECT 
	*
FROM
	dim_product
WHERE
	unit_price > (SELECT AVG(unit_price) FROM dim_product)
)
SELECT
	*
FROM
	cte_table;