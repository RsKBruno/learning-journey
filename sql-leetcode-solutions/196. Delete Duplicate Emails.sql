/*
196. Delete Duplicate Emails

Person =
| id | email            |
| -- | ---------------- |
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |

link: https://leetcode.com/problems/delete-duplicate-emails/description/
*/

-- Delete duplicates, keeping the record with the smallest ID

DELETE p1 -- Remove records from the first table instance (p1)
FROM Person AS p1
INNER JOIN Person AS p2 -- Compares the table with itself
ON p1.email = p2.email -- Identifies rows with the same email
WHERE p1.id > p2.id -- Keeps the record with the smallest ID and deletes the rest
