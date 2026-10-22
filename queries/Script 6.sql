-- WINDOW FUNCTIONS
-- Aggregation
SELECT
	category,
    AVG(unit_price) AS Average_unit_price
FROM
	dim_product
GROUP BY category;

-- WINDOW FUNCTION
SELECT
	*
FROM
	dim_product
LIMIT 5;

SELECT
	*,
    SUM(unit_price) OVER(Rows between unbounded preceding and current row) AS Running_Total
FROM
	dim_product;
    
SELECT
	*,
    SUM(unit_price) OVER(Rows between unbounded preceding and unbounded following) AS Total_revenue
FROM
	dim_product;

-- Ranking
SELECT 
	unit_price,
    category,
    row_number() OVER(PARTITION BY category ORDER BY unit_price) AS Ranked_row_number,
    RANK() OVER(partition by category ORDER BY unit_price) AS Ranked,
    DENSE_RANK() OVER(partition by category ORDER BY unit_price) AS Dense_ranked
FROM
	dim_product;




