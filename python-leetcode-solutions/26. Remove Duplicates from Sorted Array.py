'''
26. Remove Duplicates from Sorted Array

Code Objective:
    Remove duplicates from a sorted array.
    Return the number of unique elements

Link: https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/
'''

class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:

        # Counter for unique elements. It starts at 1 because the first element > nums[0] is always unique
        k = 1
        # Pointer marking where the next unique element will be pleced.
        currentIndex = 1 
        for i in range(1, len(nums)):
            # Compares the current element with the previous one
            if nums[i] != nums[i-1]:
                # Moves the unique element to the currentIndex position
                nums[currentIndex] = nums[i]
                currentIndex += 1
                k += 1
        return k # Return the total number of unique elements
    