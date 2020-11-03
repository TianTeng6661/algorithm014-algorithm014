import UIKit

func uniqueOccurrences(_ arr: [Int]) -> Bool {
    
    if(arr.count == 0){
        return true
    }
    var counter = [Int:Int]()
    for i in 0 ..< arr.count {
        counter[arr[i],default:0] += 1
    }
    var resultArr = [Int]()
    for (_ , v) in counter {
        if(resultArr.contains(v)){
            return false
        }
        resultArr.append(v)
    }
    return true
}












