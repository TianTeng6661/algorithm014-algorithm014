import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    
    let count = prices.count
    if(count <= 1){
        return 0
    }
    var ans = 0
    for num in 1 ..< prices.count {
        if(prices[num] > prices[num - 1]){
            ans += prices[num] - prices[num - 1]
        }
    }
    return ans

}
var iosArray = [7,1,5,3,6,4]
maxProfit(iosArray)

