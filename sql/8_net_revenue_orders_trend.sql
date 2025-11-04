/*
------------------------------------------------------------
Project: New Wheels Sales Analysis
Question 8: Analyze the trend of net revenue and the number of orders by quarter.
------------------------------------------------------------
*/

-- Query to calculate net revenue and order count per quarter
SELECT 
    quarter_number, 
    FORMAT(SUM(quantity * (vehicle_price - discount)), 2) AS net_revenue,
    COUNT(order_id) AS order_count
FROM 
    order_t
GROUP BY 
    quarter_number
ORDER BY 
    quarter_number;

------------------------------------------------------------
-- Observations and Insights:
-- • Both revenue (-41%) and order count (-36%) decreased over the quarters,
--   indicating a systemic business issue rather than just seasonal variation.
-- • Average order value decreased, suggesting customers may be choosing lower-priced vehicles or purchasing less frequently.
-- • Combined declines in revenue and orders indicate that New Wheels may be losing existing customers faster than acquiring new ones.
-- • Recommendation: Implement customer retention strategies, review pricing and product mix, and analyze operational factors contributing to the decline.
------------------------------------------------------------
