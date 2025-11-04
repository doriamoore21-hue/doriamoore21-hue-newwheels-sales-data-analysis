SELECT 
	p.vehicle_maker,
	COUNT(DISTINCT customer_id) AS total_customers 
FROM 
	product_t AS p 
		INNER JOIN 
	order_t AS o ON o.product_id = p.product_id
GROUP BY p.vehicle_maker 
ORDER BY total_customers DESC 
LIMIT 5; 
