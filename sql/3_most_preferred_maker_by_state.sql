/*
------------------------------------------------------------
Project: New Wheels Sales Analysis
Question 3: Identify the most preferred vehicle maker in each state.
------------------------------------------------------------
*/

-- Query to find the top vehicle maker per state based on the number of customers
SELECT 
    state, 
    vehicle_maker, 
    customer_count, 
    rnk
FROM (
    SELECT
        c.state, 
        p.vehicle_maker,
        COUNT(o.customer_id) AS customer_count,
        RANK() OVER(PARTITION BY c.state ORDER BY COUNT(o.customer_id) DESC) AS rnk
    FROM 
        product_t AS p
    INNER JOIN 
        order_t AS o 
        ON p.product_id = o.product_id
    INNER JOIN 
        customer_t AS c 
        ON o.customer_id = c.customer_id
    GROUP BY 
        c.state, p.vehicle_maker
) AS ranked
WHERE 
    rnk = 1
ORDER BY 
    state;

------------------------------------------------------------
-- Observations and Insights:
-- • Multiple states have top-performing vehicle makers with ties in customer count.
-- • Regional preferences may be influenced by local marketing, media coverage, or demographic factors.
-- • Recommendation: Explore state-specific promotions and campaigns to reinforce
--   brand leadership and encourage customer loyalty in key regions.
------------------------------------------------------------
