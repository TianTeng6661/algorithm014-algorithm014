import UIKit


func mySqrt(_ x: Int) -> Int {
    
    guard x > 0 else {
        return 0
    }
    
    var low = 0
    var hight = x
    var ans = -1
    while (hight >= low) {
        let mid = (low + hight)/2
        if(mid * mid <= x){
            ans = mid
            low = mid + 1
        }else{
            hight = mid - 1
        }
    }
    return ans
    
}
mySqrt(8)
