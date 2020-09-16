import UIKit

func maxProduct(_ nums: [Int]) -> Int {
    
    guard nums.count != 0 else {
        return 0
    }
    if(nums.count == 1){
        return nums[0]
    }
    
    var p = nums[0]
    var maxP = nums[0]
    var minP = nums[0]
    for i in 1 ..< nums.count {
        
        let t = maxP
        maxP = max(max(maxP * nums[i], nums[i]), minP * nums[i])
        minP = min(min(t * nums[i], nums[i]), minP * nums[i])
        p = max(maxP, p)
    }
    return p
    
}

let iosArr = [-2,3,-4]
print(maxProduct(iosArr))













