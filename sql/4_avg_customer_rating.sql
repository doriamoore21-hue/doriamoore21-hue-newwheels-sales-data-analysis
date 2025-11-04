/*
------------------------------------------------------------
Project: New Wheels Sales Analysis
Question 4: Find the overall average rating given by customers.
Also, calculate the average rating in each quarter.
------------------------------------------------------------
*/

-- 4A. Overall average customer rating
SELECT 
    AVG(customer_feedback_number) AS total_feedback
FROM (
    SELECT 
        customer_feedback,
        CASE 
            WHEN customer_feedback = 'Very Good' THEN 5
            WHEN customer_feedback = 'Good' THEN 4
            WHEN customer_feedback = 'Okay' THEN 3
            WHEN customer_feedback = 'Bad' THEN 2
            WHEN customer_feedback = 'Very Bad' THEN 1
        END AS customer_feedback_number
    FROM 
        order_t
) AS conversion;

-- 4B. Average rating per quarter
SELECT 
    quarter_number,
    ROUND(AVG(rating), 2) AS feedback_per_quarter
FROM (
    SELECT 
        quarter_number,
        customer_feedback,
        CASE 
            WHEN customer_feedback = 'Very Bad' THEN 1
            WHEN customer_feedback = 'Bad' THEN 2
            WHEN customer_feedback = 'Okay' THEN 3
            WHEN customer_feedback = 'Good' THEN 4
            WHEN customer_feedback = 'Very Good' THEN 5
        END AS rating
    FROM 
        order_t
) AS rating_tbl
GROUP BY 
    quarter_number
ORDER BY 
    quarter_number;

------------------------------------------------------------
-- Observations and Insights:
-- • Overall average rating provides a measure of customer satisfaction across all orders.
-- • Ratings dropped from 3.24 in Q1 to 2.4 in Q4, showing a significant decline over the year.
-- • Potential factors for the decline: decreased marketing efforts, vehicle quality issues, limited post-sale support, or shipping delays.
-- • Recommendation: Conduct deeper analysis to pinpoint causes of declining satisfaction and implement strategies to improve customer experience.
------------------------------------------------------------
