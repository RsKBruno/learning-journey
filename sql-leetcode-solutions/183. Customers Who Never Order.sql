/*
183. Customers Who Never Order

link: https://leetcode.com/problems/customers-who-never-order/description/
*/
-- Better performance \/ 
SELECT c.name AS Customers
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.id = o.customerId -- A join to include all the customers
WHERE o.customerId IS NULL; -- Then we filter the customer with no matching orders


/*
Alternative way:

The subquery runs and returns all CustomerId values that exist in the Orders table, then the main query checks each customer's id against the list from the subquery.

If the id of the main query is not in the list of the subquery, the customer is included in ther result.
*/

SELECT name AS Customers
FROM Customers
WHERE id NOT IN (
    SELECT CustomerId FROM Orders
);
