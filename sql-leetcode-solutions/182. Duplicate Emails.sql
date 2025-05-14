/*
182. Duplicate Emails

Person table:
| id | email   |
| -- | ------- |
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |

link: https://leetcode.com/problems/duplicate-emails/description/
*/

SELECT 
    email AS Email
FROM 
    Person
GROUP BY 
    email -- Aggregate all rows sharing the same email value
HAVING 
    COUNT(email) > 1; -- only keep groups where that email appears more than once

/*
Why use COUNT(email) instead of COUNT(*)?
COUNT(EMAIL) - Ignore NULL values in the email column 
COUNT(*) - Count all the rows in the table, including those with NULL
*/
