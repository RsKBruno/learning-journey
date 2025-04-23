/* 181. Employees Earning More Than Their Managers

link: https://leetcode.com/problems/employees-earning-more-than-their-managers/description/
*/
SELECT e.name AS Employee
FROM Employee e -- Alias 'e' represents the emplyee record
JOIN Employee m -- Alias 'm' represents the manager record(self join)
    ON e.managerId = m.id -- Link each employee to their manager by matching IDs
WHERE e.salary > m.salary -- only include employees whose salary exceed their manager's

/*
1. What is a Self-Join?
A self-join is when a table is joined to itself, in other words a self-join treats a single table as two separate entities, allowing you to compare rows within the same table

2. What if the employee doesn't have a manager?
The JOIN ignore automatically these lines, because it doesn't have correspondense for NULL
*/
