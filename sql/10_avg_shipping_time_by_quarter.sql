/*
-----------------------------------------------------------
Project: New Wheels Sales Analysis
Question 10: Calculate the average time taken to ship orders for each quarter.
------------------------------------------------------------
*/

-- Query to calculate average shipping time per quarter
SELECT 
    quarter_number,
    ROUND(AVG(julianday(ship_date) - julianday(order_date)), 0) AS avg_days_to_ship
FROM
    order_t
GROUP BY 
    quarter_number
ORDER BY 
    quarter_number;

------------------------------------------------------------
-- Observations and Insights:
-- • Average shipping time increased 200% from Q1 (57 days) to Q4 (174 days), showing a clear upward trend.
-- • Possible causes: delays in operations, declining fulfillment capacity, or demand exceeding operational limits.
-- • Impact: Longer shipping times likely contributed to declining customer satisfaction and order volume.
-- • Recommendation: Optimize logistics and operational processes, consider staffing expansion, and improve fulfillment to maintain service quality and customer retention.
------------------------------------------------------------
