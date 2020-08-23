import UIKit

func runningSum(_ nums: [Int]) -> [Int] {
    
    guard nums.count > 0 else{
        return []
    }
    var resultArray = [Int]()
    var tagCount = nums[0]
    resultArray.append(tagCount)
    for i in 1 ..< nums.count{
        let number = nums[i]
        tagCount = tagCount+number
        resultArray.append(tagCount)
    }
    return resultArray;
}

var array = [3,1,2,10,1]
runningSum(array)
