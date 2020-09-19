import UIKit

func waysToStep(_ n: Int) -> Int {

    if(n <= 2){
        return n
    }else if(n == 3){
        return 4
    }
    
    var resultArr = [Int](repeating: 0, count: n)
    resultArr[0] = 1
    resultArr[1] = 2
    resultArr[2] = 4
    
    for i in 3 ..< n {
        resultArr[i] = (resultArr[i - 1] + resultArr[i - 2] + resultArr[i - 3]) % 1000000007
    }
    return resultArr.last!

}

print(waysToStep(76))













