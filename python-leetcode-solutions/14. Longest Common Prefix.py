'''
14. Longest Common Prefix

link: https://leetcode.com/problems/longest-common-prefix/
'''

def longestCommonPrefix(self, strs: List[str]) -> str:
    # In case of empty input list
    if not strs:
        return ""
    
    # Find the SHORTEST string in the list
    # min() with key=len compares STRING LENGTHS, not alphabetical order
    min_str = min(strs, key=len) # Ex: ["flower", "flow"] -> "flow"

    # Iterate over each character position of the shortest string
    for i in range(len(min_str)): # i = 0, 1, 2, 3, .... 
        current_char = min_str[i] # Get the character at position i

        # Check ALL strings to see if they have the same character at position i
        for s in strs: 
            if s[i] != current_char:
                # This is the longest common prefix found so far
                return min_str[:i]
    
    # This happens when the shortest string is a prefix of all longer strings
    return min_str
