/*
607. Sales Person

Write a solution to find the names of all the salespersons who did not have any orders related to the company with the name "RED".

SalesPerson =
| sales_id | name | salary | commission_rate | hire_date  |
| -------- | ---- | ------ | --------------- | ---------- |
| 1        | John | 100000 | 6               | 4/1/2006   |
| 2        | Amy  | 12000  | 5               | 5/1/2010   |
| 3        | Mark | 65000  | 12              | 12/25/2008 |
| 4        | Pam  | 25000  | 25              | 1/1/2005   |
| 5        | Alex | 5000   | 10              | 2/3/2007   |

Company =
| com_id | name   | city     |
| ------ | ------ | -------- |
| 1      | RED    | Boston   |
| 2      | ORANGE | New York |
| 3      | YELLOW | Boston   |
| 4      | GREEN  | Austin   |

Orders =
| order_id | order_date | com_id | sales_id | amount |
| -------- | ---------- | ------ | -------- | ------ |
| 1        | 1/1/2014   | 3      | 4        | 10000  |
| 2        | 2/1/2014   | 4      | 5        | 5000   |
| 3        | 3/1/2014   | 1      | 1        | 50000  |
| 4        | 4/1/2014   | 1      | 4        | 25000  |

Link: https://leetcode.com/problems/sales-person/description/
*/
SELECT 
    sp.name
FROM  
    SalesPerson AS sp
WHERE 
    -- We only want to keep a salesperson if their sales_id is not associated with any order of the company 'RED'
    sp.sales_id NOT IN (
        -- This subquery selects all sales_ids that HAVE placed an order with the company 'RED'
        SELECT 
            o.sales_id
        FROM 
            Orders AS o
        INNER JOIN 
            -- This line  links the Orders table with the Company table by matching their com_id columns, This connection is essential so we can use details from the Company table like its name for  each order.
            Company AS c ON o.com_id = c.com_id
        WHERE 
            -- Here we specify that we only want orders from the company 'RED'
            c.name = 'RED'
    );