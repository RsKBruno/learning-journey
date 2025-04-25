/*
175. Combine Two Tables

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