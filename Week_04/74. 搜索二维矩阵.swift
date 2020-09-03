import UIKit

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    
    guard matrix.count != 0 else{
        return false
    }
    if(matrix[0].count == 0){
        return false
    }
    
    for num in 0 ..< matrix.count {
        
        let temArr = matrix[num]
        
        if(num == 0 && temArr[0] > target){
            return false
        }
        if(num == (matrix.count-1) && temArr.last! < target){
            return false
        }
        if(temArr.last! < target){
            continue
        }
        //对temArr进行二分查找
        return binarySearch(nums: temArr, target: target)
        
    }
    return false
    
}

func binarySearch(nums:[Int],target:Int) -> Bool{
    
    var low = 0
    var hight = nums.count - 1
    while hight >= low {
        let mid = (low + hight)/2
        if(nums[mid] == target){
            return true
        }
        if(nums[mid] > target){
            hight = mid - 1
        }else{
            low = mid + 1
        }
    }
    return false
}

//var iosArr = [[1,3,5,7],[10,11,16,20],[23,30,34,50]]
var iosArr = [[]]
searchMatrix(iosArr as! [[Int]], 13)

