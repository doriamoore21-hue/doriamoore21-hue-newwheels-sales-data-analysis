/*
------------------------------------------------------------
Project: New Wheels Sales Analysis
Question 2: Identify the top 5 vehicle makers preferred by customers.
------------------------------------------------------------
*/

-- Query to find the top 5 vehicle makers based on the number of unique customers
SELECT 
    p.vehicle_maker,
    COUNT(DISTINCT o.customer_id) AS total_customers
FROM 
    product_t AS p
INNER JOIN 
    order_t AS o 
    ON o.product_id = p.product_id
GROUP BY 
    p.vehicle_maker
ORDER BY 
    total_customers DESC
LIMIT 5;

------------------------------------------------------------
-- Observations and Insights:
-- • Chevrolet and Ford lead as the top-performing vehicle makers.
-- • Their strong performance may be linked to reliability, brand trust,
--   or alignment with customer demographics and preferences.
-- • Lower-ranked brands may face challenges with visibility, pricing, or perception.
-- • Recommendation: Enhance marketing and promotional visibility for
--   underperforming makers, while maintaining engagement strategies for the top 5.
------------------------------------------------------------
