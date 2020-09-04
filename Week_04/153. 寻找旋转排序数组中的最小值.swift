import UIKit

func findMin(_ nums: [Int]) -> Int {
    
    if(nums.count == 0 || nums.count == 1){
        return (nums.count == 1 ? nums[0] : 0)
    }
    var low = 0
    var hight = nums.count - 1
    if(nums[0] < nums[hight]){
        return nums[0]
    }
    
    while hight >= low {
        let mid = (low + hight)/2
        if(nums[mid] > nums[mid+1]){
            return nums[mid + 1]
        }
        if(nums[mid - 1] > nums[mid]){
            return nums[mid]
        }
        if(nums[mid] > nums[0]){
            low = mid + 1
        }else{
            hight = mid - 1
        }
    }
    return -1
}
var iosArray = [3,4,5,6,7,1,2]
findMin(iosArray)

