import UIKit

func canJump(_ nums: [Int]) -> Bool {
    
    guard nums.count != 0 else {
        return true
    }
    var maxCount :Int = nums[0]
    
    for count in 0 ..< nums.count {
        
        if(count <= maxCount){
            maxCount = max(maxCount, count + nums[count])
            if(maxCount >= (nums.count - 1)){
                return true
            }
        }
        
    }
    return false
}
var iosArr = [2,3,1,1,4]
canJump(iosArr)

