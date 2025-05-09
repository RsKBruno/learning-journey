'''
121. Best Time to Buy and Sell Stock

This problem asks is to find the maximum profit you can achieve from a list of stock prices, where you can onlu buy and sell once.

Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
'''

class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        if not prices or len(prices) < 2:
            return 0

        min_price_so_far = prices[0] # We'll start by assuming the lowest price seen so far is the first day's price.
        max_profit_so_far = 0 # And since we haven't made any sales yet, our maximum profit is 0

        # Loop through the prices starting from the second price
        for p in range(1, len(prices)):
            current_price = prices[p]
            potential_profit = current_price - min_price_so_far

            # Update the max_profit_so_far if the potential profit is greater
            max_profit_so_far = max(max_profit_so_far, potential_profit)
            
            # Update the min_price_so_far if the current_price is a new low
            min_price_so_far = min(min_price_so_far, current_price)
        return max_profit_so_far

'''
A more compact way was used instead of the 'if' statement, using the max() and min() functions to update the variables.
'''