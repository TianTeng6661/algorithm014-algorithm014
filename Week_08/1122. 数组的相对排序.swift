import UIKit

func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    guard arr2.count != 0 else {
        return arr1.sorted()
    }
    var dict = [Int:Int]()
    var result = [Int]()
    for i in arr1{
        if(dict[i] == nil){
            dict[i] = 0
        }else{
            dict[i]! += 1
        }
    }
    for j in arr2{
        if let val = dict[j] {
            for _ in 0 ... val {
                result.append(j)
            }
            dict.removeValue(forKey: j)
        }
    }
    var simpleArray = [Int]()
    if !dict.isEmpty {
        for (key,val) in dict {
            for _ in 0 ... val {
                simpleArray.append(key)
            }
            dict.removeValue(forKey: key)
        }
    }
    result.append(contentsOf: simpleArray.sorted())
    return result
}















