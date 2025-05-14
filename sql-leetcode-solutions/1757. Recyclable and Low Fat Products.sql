/*
Table: Products

| product_id | low_fats | recyclable |
| ---------- | -------- | ---------- |
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |

Write a solution to find the ids of products that are both low fat and recyclable.

Return the result table in any order.

link: https://leetcode.com/problems/recyclable-and-low-fat-products/?envType=study-plan-v2&envId=top-sql-50
*/
SELECT 
    product_id
FROM 
    Products
WHERE 
    low_fats = 'Y' AND recyclable = 'Y'; -- This filters the rows, returning only those that are both low fat and recyclable