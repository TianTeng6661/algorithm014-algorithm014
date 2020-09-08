import UIKit

func searchRightIndex(_ nums: [Int], _ target: Int) -> Int {
    guard nums.count != 0 else {
        return 0
    }
    var low = 0
    var high = nums.count - 1
    while high >= low {
        let mid = low + (high - low)/2
        if(nums[mid] == target){
            low = mid + 1
        }else if(nums[mid] < target){
            low = mid + 1
        }else{
            high = mid - 1
        }
    }
    //检查越界情况
    if(high < 0 || nums[high] != target){
        return -1
    }
    return high
}

let nums = [2]
searchRightIndex(nums, 2)


//找左边边界
func searchLeftIndex(_ nums: [Int], _ target: Int) -> Int {
    
    guard nums.count != 0 else {
        return 0
    }
    var low = 0
    var high = nums.count - 1
    while high >= low {
        let mid = low + (high - low)/2
        if(nums[mid] ==  target){
            high = mid - 1
        }else if(nums[mid] < target){
            low = mid + 1
        }else if(nums[mid] > target){
            high = mid - 1
        }
        
    }
    //检查出界情况
    if(low >= nums.count || nums[low] != target){
        return -1
    }
    
    return low
}

let nums = [2]
searchLeftIndex(nums, 2)





