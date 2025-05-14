/* 181. Employees Earning More Than Their Managers
Employee table:

| id | name  | salary | managerId |
| -- | ----- | ------ | --------- |
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | null      |
| 4  | Max   | 90000  | null      |

Write a solution to find the employees who earn more than their managers.

link: https://leetcode.com/problems/employees-earning-more-than-their-managers/description/
*/
SELECT 
    e.name AS Employee
FROM 
    Employee e -- Alias 'e' represents the employee record
JOIN 
    -- Alias 'm' represents the manager record(self join)
    Employee m ON e.managerId = m.id -- Link each employee to their manager by matching IDs
WHERE 
    e.salary > m.salary; -- only include employees whose salary exceed their manager's

/*
1. What is a Self-Join?
A self-join is when a table is joined to itself, in other words a self-join treats a single table as two separate entities, allowing you to compare rows within the same table

2. What if the employee doesn't have a manager?
The JOIN ignore automatically these lines, because it doesn't have correspondense for NULL
*/
