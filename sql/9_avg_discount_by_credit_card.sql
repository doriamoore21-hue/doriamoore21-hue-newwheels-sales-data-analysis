/*
------------------------------------------------------------
Project: New Wheels Sales Analysis
Question 9: Calculate the average discount offered for different types of credit cards.
------------------------------------------------------------
*/

-- Query to calculate average discount by credit card type
SELECT 
    c.credit_card_type,
    ROUND(AVG(o.discount), 2) AS avg_discount
FROM 
    customer_t AS c
JOIN 
    order_t AS o 
    ON c.customer_id = o.customer_id
GROUP BY 
    c.credit_card_type;

------------------------------------------------------------
-- Observations and Insights:
-- • All credit card types offer less than 1% discounts, indicating that promotions are not heavily driving sales.
-- • Laser card holders receive the highest average discount (0.65%), while Diners Club International receives the lowest (0.58%).
-- • Recommendation: Leverage partnerships with Laser for promotional campaigns and consider reevaluating discount strategies for Diners Club to improve engagement.
------------------------------------------------------------
