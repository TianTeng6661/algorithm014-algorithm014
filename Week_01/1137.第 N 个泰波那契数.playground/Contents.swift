import UIKit

/*
func tribonacci(_ n: Int) -> Int {
    
    if(n == 0){
        return 0;
    }
    if(n == 1 || n == 2){
        return 1;
    }
    
    let sum = tribonacci(n-1)+tribonacci(n-2)+tribonacci(n-3)
    return sum
}
*/

func tribonacci(_ n: Int) -> Int {
    
    if(n == 0){
        return 0;
    }
    if(n == 1 || n == 2){
        return 1;
    }
    var cur = 2
    var first = 0
    var second = 1
    var third = 1
    var result = 0
    
    while cur != n {
        
        result = first + second + third
        first = second
        second = third
        third = result
        cur += 1
    }
    return result
}

tribonacci(25)
