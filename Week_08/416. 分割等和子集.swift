import UIKit

func canPartition(_ nums: [Int]) -> Bool {
    guard nums.count > 1 else {
        return false
    }
    var sum = 0
    for i in 0 ..< nums.count {
        sum += nums[i]
    }
    //和为奇数时，不能划分
    if sum % 2 != 0 {
        return false
    }
    let count = nums.count
    sum = sum / 2
    
    var dp = [Bool](repeating: false, count: sum + 1)
    dp[0] = true
    for i in 0 ..< count {
        for j in (0 ..< dp.count).reversed(){
            if (j - nums[i] >= 0){
                dp[j] = dp[j] || dp[j - nums[i]]
            }
        }
    }
    return dp[sum]
}

let arr = [1, 5, 11, 5]
print(canPartition(arr))















