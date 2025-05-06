/*
175. Combine Two Tables
Person table:

| personId | lastName | firstName |
| -------- | -------- | --------- |
| 1        | Wang     | Allen     |
| 2        | Alice    | Bob       |

Address table:
| addressId | personId | city          | state      |
| --------- | -------- | ------------- | ---------- |
| 1         | 2        | New York City | New York   |
| 2         | 3        | Leetcode      | California |

Write a solution to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.

link: https://leetcode.com/problems/combine-two-tables/description/
*/

SELECT 
    p.firstName, 
    p.lastName, 
    a.city,
    a.state
FROM Person AS p
LEFT JOIN Address AS a
    ON p.personId = a.personId;

/*
Use LEFT JOIN to keep all records from the table Person and include matching records from the table Address. If a match doesn't exist, the fields of the table Address will be NULL

- Why not use INNER JOIN?

It would exclude people with no addresses. We need all people, so LEFT JOIN is correct.

- What if a person has multiple addresses?

The query would return one row per address. 
*/