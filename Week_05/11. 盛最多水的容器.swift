import UIKit

func maxArea(_ height: [Int]) -> Int {
    
    var maxCount = 0
    var low = 0
    var hight = height.count - 1
    
    while hight > low {
        if(height[low] < height[hight]){
            
            maxCount = max(maxCount, (height[low] * (hight - low)))
            low += 1
        }else{
            maxCount = max(maxCount, (height[hight] * (hight - low)))
            hight -= 1
        }
    }

    return maxCount
}
let iosArray = [1,8,6,2,5,4,8,3,7]
maxArea(iosArray)









