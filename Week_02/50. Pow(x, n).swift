import UIKit

func quickMull(x:Double, _ N :Int) -> Double{
    var num = N
    var ans = 1.0
    var x_contribute = x;
    
    while (num > 0) {
        if(num%2 == 1){
            ans *= x_contribute;
        }
        x_contribute *= x_contribute;
        num /= 2;
    }
    return ans
}

func myPow(_ x: Double, _ n: Int) -> Double {
    
    guard n != 0 else {
        return 1
    }
    let num = n
    if(num >= 0){
        return quickMull(x: x, num)
    }else{
        return 1.0/quickMull(x: x, -num)
    }
}

myPow(2, -2)
