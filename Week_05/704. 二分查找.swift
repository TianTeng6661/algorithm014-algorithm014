import UIKit

func search(_ nums: [Int], _ target: Int) -> Int {
    
    guard nums.count != 0 else {
        return -1
    }
    var low = 0
    var hight = nums.count - 1
    while hight >= low {
        let mid = (low + hight)/2
        if(nums[mid] == target){
            return mid
        }
        if(nums[mid] > target){
            hight = mid - 1
        }else{
            low = mid + 1
        }
    }
    return -1
}

let nums = [-1,0,3,5,9,12]
search(nums, 9)



