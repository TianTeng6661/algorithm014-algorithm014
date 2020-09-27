import UIKit

func climbStairs(_ n: Int) -> Int {
    if(n == 0 || n == 1 || n == 2){
        return n
    }
    var one = 1
    var two = 2
    var sum = 0
    for _ in 2 ..< n {
        sum = one + two
        one = two
        two = sum
    }
    return sum
}
















