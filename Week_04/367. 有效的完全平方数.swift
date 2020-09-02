import UIKit


func isPerfectSquare(_ num: Int) -> Bool {
    
    if(num == 0 || num == 1){
        return true
    }
    var low = 2;
    var hight = num;
    
    while hight >= low{
        let mid = (low + hight)/2;
        let newNum = mid * mid;
        if(newNum == num){
            return true
        }else if(newNum > num){
            hight = mid - 1;
            print(hight)
        }else{
            low = mid + 1;
        }
        
    }
    
 return false
    
}
isPerfectSquare(4)
