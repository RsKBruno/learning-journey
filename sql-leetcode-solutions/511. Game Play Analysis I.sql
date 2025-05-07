/*
511. Game Play Analysis I

Activity =
| player_id | device_id | event_date | games_played |
| --------- | --------- | ---------- | ------------ |
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-05-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |

Write a solution to find the first login date for each player.

Link: https://leetcode.com/problems/game-play-analysis-i/description/
*/

SELECT 
    player_id, -- Selects the player's ID
    MIN(event_date) AS first_login -- Finds the earliest login date for each player
FROM 
    Activity -- From the Activity table
GROUP BY 
    player_id; -- Group all rows that have the same 'player_id'   
               -- The MIN() function then operates on each of these groups

/*
How do GROUP BY and MIN() work together?

When you use an aggregate function like MIN() along with GROUP BY, the MIN() function is applied separately to each of these groups.

So, for the player_id = 1 group, MIN(event_date) finds the earliest date among all, and so on for the other player_ids.
*/