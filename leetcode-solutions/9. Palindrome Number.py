# 9. Palindrome Number
# Given an integer x, return true if x is a palindrome, and false otherwise.
# Link: https://leetcode.com/problems/palindrome-number/description/

class Solution:
    def isPalindrome(self, x: int) -> bool:
        '''
        Alternative solution using string conversion:
        We simply convert x to a string, then use slicing to reverse the string,
        and finally compare the reversed string to the original one.

        s = str(x)
        return s == s[::-1]
        '''
        if x < 0: # Negative numbers can't be  palindromes
            return False
        if x == 0: # 0 is a palindrome number
            return True
        if x % 10 == 0: # Numbers ending with 0 (except 0) are not palindromes
            return False

        originalX = x # Save the original value of x for later comparison
        numReversed = 0 # Stores the reversed version of x

        while x > 0:
            lastDigit = x % 10 # Extract the last digit of x
            numReversed = numReversed * 10 + lastDigit # Build the reversed number
            x = x // 10 # Remove the last digit from x
        
        return numReversed == originalX # Check if reversed equals original