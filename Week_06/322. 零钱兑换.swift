import UIKit

func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    if(coins.count == 0 || amount == 0){
        return 0
    }
    var dp = [Int].init(repeating: Int.max, count: amount + 1)
    dp[0] = 0
    for i in 0 ... amount {
        for j in 0 ..< coins.count {
            if(coins[j] <= i && dp[i - coins[j]] != Int.max){
                dp[i] = min(dp[i], dp[i - coins[j]] + 1)
            }
        }
    }
    let result = dp.last!
    return result == Int.max ? -1 : result
    
}

print(coinChange([1, 2, 5], 11))













