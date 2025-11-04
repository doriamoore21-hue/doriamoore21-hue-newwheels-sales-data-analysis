/*
------------------------------------------------------------
Project: New Wheels Sales Analysis
Question 6: Analyze the trend of the number of orders by quarter.
------------------------------------------------------------
*/

-- Query to calculate the number of orders per quarter
SELECT 
    quarter_number, 
    COUNT(order_id) AS number_of_orders
FROM 
    order_t
GROUP BY 
    quarter_number
ORDER BY 
    quarter_number;

------------------------------------------------------------
-- Observations and Insights:
-- • There was approximately a 36% decrease in total orders from Q1 to Q4.
-- • Declining order numbers suggest fewer repeat or new customer purchases,
--   likely linked to lower customer satisfaction ratings.
-- • Recommendation: Focus on improving customer engagement and retention.
--   Suggested strategies:
--     - Implement loyalty programs and consistent communication.
--     - Execute service recovery initiatives for dissatisfied customers.
--     - Conduct product/service audits to identify declining products and customer churn patterns.
------------------------------------------------------------
