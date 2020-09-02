import UIKit


func search(_ nums: [Int], _ target: Int) -> Int {
    
    let count = nums.count
    if(count == 0){
        return -1
    }
    if(count == 1){
        return (nums[0] == target ? 0 : -1)
    }
    var low = 0
    var hight = count - 1
    
    while hight >= low {
        let mid = (low + hight)/2
        if(nums[mid] == target){
            return mid
        }
        if(nums[0] <= nums[mid]){
            if(nums[0] <= target && nums[mid] > target){
                hight = mid - 1
            }else{
                low = mid + 1
            }
        }else{
            if(target > nums[mid] && target <= nums[count-1]){
                low = mid + 1
            }else{
                hight = mid - 1
            }
        }
    }
    return -1
    
}

var iosArr = [5,1,3]
search(iosArr, 3)









/*
func search(_ nums: [Int], _ target: Int) -> Int {
    guard nums.count != 0 else{
        return -1
    }
    if(nums.count == 1){
        return (nums[0] == target ? 0 : -1)
    }
    var low = 0
    var hight = nums.count - 1
    while hight >= low {
        let mid = (low + hight)/2
        if(nums[mid] == target){
            return mid
        }
        if(nums[0] <= nums[mid]){
            if(nums[0] <= target && target<nums[mid]){
                hight = mid - 1
            }else{
                low = mid + 1
            }
        }else{
            if(nums[mid] < target && target <= nums.last!){
                low = mid + 1
            }else{
                hight = mid - 1
            }
        }
        
    }
    
    return -1
}
*/

