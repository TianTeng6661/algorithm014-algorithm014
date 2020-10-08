import UIKit

func sortColors(_ nums: inout [Int]) {
    
    let n = nums.count
    var ptr = 0
    for i in 0 ..< n {
        if(nums[i] == 0){
            nums.swapAt(i, ptr)
            ptr += 1
        }
    }
    for i in ptr ..< n {
        if(nums[i] == 1){
            nums.swapAt(i, ptr)
            ptr += 1
        }
    }
    
}
















