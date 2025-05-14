/*
183. Customers Who Never Order

Write a solution to find all customers who never order anything.

Customers =
| id | name  |
| -- | ----- |
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |

Orders =
| id | customerId |
| -- | ---------- |
| 1  | 3          |
| 2  | 1          |

link: https://leetcode.com/problems/customers-who-never-order/description/
*/
-- Better performance \/ 
SELECT 
    c.name AS Customers
FROM 
    Customers AS c
LEFT JOIN 
    Orders AS o ON c.id = o.customerId -- A join to include all the customers
WHERE 
    o.customerId IS NULL; -- Then we filter the customer with no matching orders


/*
Alternative way:

The subquery runs and returns all CustomerId values that exist in the Orders table, then the main query checks each customer's id against the list from the subquery.

If the id of the main query is not in the list of the subquery, the customer is included in ther result.
*/

SELECT 
    name AS Customers
FROM 
    Customers
WHERE 
    id NOT IN (
    SELECT CustomerId FROM Orders
);
