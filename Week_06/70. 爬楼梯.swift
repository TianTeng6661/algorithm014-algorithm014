import UIKit

func climbStairs(_ n: Int) -> Int {
    if(n == 0 || n == 1){
        return n
    }
    var resultArr = [Int](repeating: 0, count: n)
    resultArr[0] = 1
    resultArr[1] = 2
    
    for i in 2 ..< n {
        resultArr[i] = resultArr[i - 1] + resultArr[i - 2]
    }
    return resultArr.last!
}

print(climbStairs(1))













