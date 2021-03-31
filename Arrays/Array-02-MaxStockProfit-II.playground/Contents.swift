/*
 Best Time to Buy and Sell Stock II
 */

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        for var i in 1..<prices.count {
            if prices[i] > prices[i-1] {
                profit += prices[i] - prices[i-1]
            }
        }
        return profit
    }
}
//7,1,5,3,6,4
print(Solution().maxProfit([7,1,5,3,6,4]))
