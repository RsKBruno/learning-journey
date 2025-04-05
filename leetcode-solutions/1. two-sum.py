'''
1. TWO SUM

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

 

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
'''


class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
       # \/ Stores numbers that have already been seen along with their indices
        num_dict = {} 
       # \/ Iterate over the list, accessing both the index and the value
        for i, num in enumerate(nums):
            # \/ Compute the complement that, when added to num, equals the target
            complement = target - num
            # \/ Check if the complement exists in the dictionary, if it does, it means we have
            # already found that, a number that when added to the current num, equals the target.
            if complement in num_dict:
                return [num_dict[complement], i]
            # \/ If the complement is not found, add the current number and its index to the dictionary
            num_dict[num] = i
            

