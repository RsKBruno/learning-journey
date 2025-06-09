'''
206. Reverse Linked List

Link of the problem: https://leetcode.com/problems/reverse-linked-list/description/

Links of the videos that helped me to understand the problem and the concept of linked lists:

Bro Code: "Learn Linked Lists in 13 minutes":  
https://www.youtube.com/watch?v=N6dOwBde7-M&t=106s

NeuralNine: "Linked List - Data Structures in Python #1" 
https://www.youtube.com/watch?v=1iz9SRWdpX8

NeuralNine: "Stack - Data Structures in Python #2" 
https://www.youtube.com/watch?v=RX3SB6pyXao

Greg Hogg: "Reverse Linked List - Leetcode 206 - Linked Lists (Python)" 
https://youtu.be/KRxeMng7fBU
'''
# Given the head of a singly linked list, reverse the list, and return the reversed list.

class Solution:
    def reverseList(self, head: ListNode) -> ListNode:
        # 1. Initialize pointers
        previous_node = None  # This will eventully be the new tail's next
        current_node = head   # Start at the beginning of the list

        # 2. Iterate through the list
        while current_node is not None:
            # Store the next node before we change current_node.next
            next_node_temp = current_node.next
            
            # Reverse the current node's pointer
            current_node.next = previous_node
            
            # Move previous_node one step forward for the next iteration
            previous_node = current_node
            
            # Move current_node one step forward for the next iteration
            current_node = next_node_temp
            
        # 3. After the loop. previous_node will be the new head of the reversed list
        return previous_node
    