/*
627. Swap Salary

Write a solution to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.

Note that you must write a single update statement, do not write any select statement for this problem.

The result format is in the following example.

Link: https://leetcode.com/problems/swap-salary/description/
*/

UPDATE 
    Salary
SET -- This specifies that we want to change the values of the sex column
    sex = 
        CASE -- This is the the conditional statement that decides what the new value for 'sex will be for each row
            WHEN sex = 'm' THEN 'f' -- If its current sex value is 'm', the 'CASE' statement return 'f'
            ELSE 'm' -- if the 'WHEN' condition is not met, it means the current value is 'f', so the 'CASE' statement return 'm'
        END;

/*
What should be avoided in this problem?

"Two-step update trap": If you first run \/ 

"UPDATE Salary SET sex = 'f' WHERE sex = 'm'

it will change all 'm' to 'f', and then if you run \/

"UPDATE Salary SET sex = 'm' WHERE sex = 'f'"

it would incorrectly change all rows(including the ones we just updated) to 'm'.
*/