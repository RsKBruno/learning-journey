/*
620. Not Boring Movies

Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

Return the result table ordered by rating in descending order.

link: https://leetcode.com/problems/not-boring-movies/
*/
SELECT 
    *
FROM 
    cinema
WHERE 

    id % 2 <> 0 -- The % calculates the remainder of 'id' divied by 2, we only keep the row if the remainder is not equal to 0(meaning the id is odd)

    AND description <> 'boring' -- It ensures that the description is not equal to 'boring'
ORDER BY 
    rating DESC; -- This orders the result by rating in descending order