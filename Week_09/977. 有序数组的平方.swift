import UIKit

func sortedSquares(_ A: [Int]) -> [Int] {
    guard A.count != 0 else{
        return A
    }
    var resArr = [Int](repeating: 0, count: A.count)
    var j = A.count - 1
    var pos = j
    var i = 0
    while (i <= j) {
        let left = A[i] * A[i]
        let right = A[j] * A[j]
        if(left > right){
            resArr[pos] = left
            i += 1
        }else{
            resArr[pos] = right
            j -= 1
        }
        pos -= 1
    }
    return resArr
}

let arr = [-4,-1,0,3,10]
print(sortedSquares(arr))














