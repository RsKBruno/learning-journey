'''
27. Remove Element

Link: https://leetcode.com/problems/remove-element/
A
'''
class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        # k is the 'write' pointer, It tracks the index where the next element to keep should be placed
        k = 0

        # We iterate through the list using 'i'as the 'read' pointer.
        for i in range(len(nums)):
            # If the current element is NOT equal to the value to remove...
            if nums[i] != val:
                # ... then we keep it by placing it at the 'k'th position.
                nums[k] = nums[i]
                # And we increment 'k' to prepare for the next element to keep.
                k += 1
        
        # After the loop, 'k' will be the count of elements not equal to 'val'.
        # The first k elements of 'nums' will hold the result/
        return k