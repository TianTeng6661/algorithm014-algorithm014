import UIKit

func maxProfit(_ prices: [Int]) -> Int {
    
    let count = prices.count
    if(count <= 1){
        return 0
    }
    var min = Int.max //最小
    var profit = 0 //记录利润
    
    for num in 0 ..< (prices.count - 1) {
        
        let price = prices[num]
        if(price < min){
            min = price;
        }
        let  newProfit = (prices[num + 1] - min)
        if(newProfit > profit){
            profit = newProfit
        }
    }
    return (profit > 0) ? profit : 0

}
var iosArray = [7,6,4,3,1]
maxProfit(iosArray)

