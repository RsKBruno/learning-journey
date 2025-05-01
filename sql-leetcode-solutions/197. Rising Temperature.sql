/*
197. Rising Temperature
Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

Weather =
| id | recordDate | temperature |
| -- | ---------- | ----------- |
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |

link: https://leetcode.com/problems/rising-temperature/description/
*/

SELECT w1.id
FROM Weather AS w1

-- Join the Weather table with itself
INNER JOIN Weather AS w2 
-- DATEDIFF() = 1 means w1 is exactly one day after w2
-- It ensures we only compare consecutive dates(e.g., jan 2 vs jan 1)
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1

-- Filter to find days where temperature rose compared to previous day
WHERE w1.temperature  > w2.temperature;
