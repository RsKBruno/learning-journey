/*
577. Employee Bonus
Employee:

| empId | name   | supervisor | salary |
| ----- | ------ | ---------- | ------ |
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |

Bonus:

| empId | bonus |
| ----- | ----- |
| 2     | 500   |
| 4     | 2000  |

Write a solution to report the name and bonus amount of each employee with a bonus less than 1000.

Link: https://leetcode.com/problems/employee-bonus/description/
*/

SELECT
    e.name, 
    b.bonus
FROM 
    Employee AS e
LEFT JOIN Bonus AS b 
    ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;

/*
Filtering conditions:

- Their bonus amount is strictly less than 1000 (bonus < 1000)
- OR They have no bonus entry at all (which, after the LEFT JOIN, means their bonus field from the Bonus table will be NULL)

*/
