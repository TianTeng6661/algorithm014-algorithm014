import UIKit

func plusOne(_ digits: [Int]) -> [Int] {
    var newDig = digits
    for i in (0 ... digits.count - 1).reversed() {
        if(newDig[i] + 1 <= 9){
            newDig[i] += 1
            return newDig
        }
        newDig[i] = 0
    }
    var newArr = [Int](repeating: 0, count: (newDig.count + 1))
    newArr[0] = 1
    return newArr
}

let arr = [ 9]
print(plusOne(arr))














