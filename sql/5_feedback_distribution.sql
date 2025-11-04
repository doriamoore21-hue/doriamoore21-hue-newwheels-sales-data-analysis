/*
------------------------------------------------------------
Project: New Wheels Sales Analysis
Question 5: Calculate the percentage distribution of customer feedback by quarter.
Assess whether customers are becoming more dissatisfied over time.
------------------------------------------------------------
*/

-- Query to calculate percentage distribution of feedback per quarter
SELECT 
    quarter_number,
    ROUND(SUM(CASE WHEN customer_feedback = 'Very Bad' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS perc_very_bad,
    ROUND(SUM(CASE WHEN customer_feedback = 'Bad' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS perc_bad,
    ROUND(SUM(CASE WHEN customer_feedback = 'Okay' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS perc_okay,
    ROUND(SUM(CASE WHEN customer_feedback = 'Good' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS perc_good,
    ROUND(SUM(CASE WHEN customer_feedback = 'Very Good' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS perc_very_good
FROM 
    order_t
GROUP BY 
    quarter_number
ORDER BY 
    quarter_number;

------------------------------------------------------------
-- Observations and Insights:
-- • The share of “Very Bad” and “Bad” feedback increased steadily each quarter.
-- • Positive feedback decreased over time, indicating growing customer dissatisfaction.
-- • Potential causes: service quality issues, vehicle reliability problems, or app functionality challenges.
-- • Recommendation: Investigate systemic issues affecting satisfaction and implement improvements to maintain customer retention.
------------------------------------------------------------
