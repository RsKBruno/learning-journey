/*
586. Customer Placing the Largest Number of Orders

orders table:
| order_number | customer_number |
| ------------ | --------------- |
| 1            | 1               |
| 2            | 2               |
| 3            | 3               |
| 4            | 3               |

Write a solution to find the customer_number for the customer who has placed the largest number of orders.

link: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/description/
*/

SELECT
    customer_number
FROM 
    Orders
GROUP BY -- It groups rows that have the same customer_number value
    customer_number 
ORDER BY  -- It sorts the result set in descending order based on the count of orders
    COUNT(customer_number) DESC
LIMIT 1;
