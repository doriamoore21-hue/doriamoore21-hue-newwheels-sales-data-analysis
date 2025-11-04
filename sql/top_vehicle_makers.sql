/*
---------------------------------------------------------------
File: top_vehicle_makers.sql
Project: New Wheels SQL Data Analysis
Author: Doria Moore
Date: November 2025

Purpose:
Identify the top 5 vehicle makers preferred by customers
based on unique customer purchases.

Key Concepts:
- Aggregate customer purchases by vehicle maker
- Count distinct customer IDs per maker
- Rank top makers by total customers

Expected Output:
List of the top 5 vehicle makers and the number of unique customers.
---------------------------------------------------------------
*/

SELECT 
    p.vehicle_maker,
    COUNT(DISTINCT o.customer_id) AS total_customers
FROM 
    product_t AS p
    INNER JOIN order_t AS o ON p.product_id = o.product_id
GROUP BY 
    p.vehicle_maker
ORDER BY 
    total_customers DESC
LIMIT 5;
 
