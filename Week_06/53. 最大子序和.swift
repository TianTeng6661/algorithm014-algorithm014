import UIKit

func maxSubArray(_ nums: [Int]) -> Int {
    
    guard nums.count != 0 else {
        return 0
    }
    var maxCount = nums[0]
    var res : [Int] = nums
    for i in 1 ..< nums.count {
        res[i] = max(res[i], (res[i] + res[i - 1]))
        maxCount = max(maxCount, res[i])
    }
    return maxCount
}
let iosArr = [1]
print(maxSubArray(iosArr))













