import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    let count = prices.count
    if(count <= 1){
        return 0
    }
    var min = Int.max
    var profit = 0
    
    for num in 0 ..< (count - 1) {
        if(prices[num] < min){
            min = prices[num]
        }
        let newProfit = (prices[num + 1] - min)
        if(newProfit > profit){
            profit = newProfit
        }
    }
    return (profit > 0) ? profit : 0
}














