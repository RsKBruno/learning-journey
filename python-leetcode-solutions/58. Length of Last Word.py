'''
58. Length of Last Word

Link: https://leetcode.com/problems/length-of-last-word/description/
'''
class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        i = len(s) - 1 # Index of the last character of the string
        length = 0 # Counter that will have the lenght of the last word
 

        # We move the index backwards ultil we find a non-space charater
        # Why? i >= 0 --> Beucase the first index is always 0 and we're avoiding go under that
        while i >= 0 and s[i] == ' ':
            i -= 1

        # Step 2: Count the characters backward until it hits a space or the start of the string
        while i >= 0 and s[i] != ' ':
            length += 1
            i -= 1

        return length


'''        
        # Alternative solution using split()
        words = s.split() # split into words (ignore spaces)
        return len(words[-1]) # Return the length of the last word
'''
