import UIKit

func subsets(_ nums: [Int]) -> [[Int]] {
    guard nums.count > 0 else {
        return []
    }
    var res = [[Int]]()
    for (_ , num) in nums.enumerated() {
        var array = [Int]()
        array.append(num)
        res.append(array)
        
        for i in 0 ..< res.count {
            
            var newArr = res[i];
            if(!newArr.contains(num)){
                newArr.append(num)
                res.append(newArr)
            }
            
        }
    }
    res.append([])
    return res
}

print(subsets([1,2,3]))













