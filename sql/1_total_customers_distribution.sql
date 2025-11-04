/*
------------------------------------------------------------
Project: New Wheels Sales Analysis
Question 1: Find the total number of customers who have placed orders
and analyze the distribution of customers across states.
------------------------------------------------------------
*/

-- 1A. Find the total number of unique customers who have placed orders
SELECT 
    COUNT(DISTINCT customer_id) AS total_customers
FROM 
    order_t;

-- 1B. Find the distribution of customers across states
SELECT 
    state, 
    COUNT(DISTINCT customer_id) AS total_customers
FROM 
    customer_t
GROUP BY 
    state
ORDER BY 
    total_customers DESC;

------------------------------------------------------------
-- Observations and Insights:
-- • Texas and California lead in sales, with 97 customers each.
-- • These states together account for ~21% of total customers.
-- • High sales may be due to stronger marketing and population density.
-- • Remote states (e.g., Wyoming, Vermont) show lower sales activity.
-- • Recommendation: Strengthen marketing and operations in top-performing states,
--   while exploring targeted campaigns for underperforming regions.
------------------------------------------------------------
