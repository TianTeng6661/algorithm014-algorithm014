import UIKit

func minCostClimbingStairs(_ cost: [Int]) -> Int {
    if (cost.count < 2){
        return 0
    }
    var dp = [Int](repeating: 0, count: cost.count)
    dp[0] = cost[0]
    dp[1] = cost[1]
    for i in 2 ..< cost.count {
        dp[i] = min(dp[i - 2], dp[i - 1]) + cost[i]
    }
    return min(dp[cost.count - 2], dp[cost.count - 1])
}














