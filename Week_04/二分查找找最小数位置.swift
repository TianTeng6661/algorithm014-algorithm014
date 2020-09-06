import UIKit

func findMin(_ nums: [Int]) -> Int {
    
    let numsCount = nums.count
    guard numsCount != 0 else {
        return 0
    }
    if(numsCount == 1){
        return 0
        //return nums[0]
    }
    if(nums[0] < nums[numsCount - 1]){
        return 0
        //return nums[0]
    }
    
    var low = 0
    var hight = numsCount - 1
    
    while hight >= low {
        let mid = (low + hight)/2
        if(nums[mid] > nums[mid + 1]){
            return (mid + 1)
            //return nums[mid + 1]
            
        }
        if(nums[mid - 1] > nums[mid]){
            return mid
            //return nums[mid]
        }
        if(nums[0] < nums[mid]){
            low = mid + 1
        }else{
            hight = mid - 1
        }
    }
    return -1
    
}

var iosArr = [4, 5, 6, 7, 0, 1, 2]
findMin(iosArr)

