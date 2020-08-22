import UIKit


func nthUglyNumber(_ n: Int) -> Int {
    
    guard n > 0 else{
        return 0
    }
    var uglyArr = Array(repeating: 0, count: n)
    uglyArr[0] = 1
    var p2 = 0,p3 = 0, p5 = 0
    var nextUglyIndex = 1
    while nextUglyIndex < n {
        let ugly = min(uglyArr[p2]*2, uglyArr[p3]*3,uglyArr[p5]*5)
        uglyArr[nextUglyIndex] = ugly
        while uglyArr[p2]*2 <= uglyArr[nextUglyIndex]{
            p2 = p2 + 1
        }
        while uglyArr[p3]*3 <= uglyArr[nextUglyIndex]{
            p3 = p3 + 1
        }
        while uglyArr[p5]*5 <= uglyArr[nextUglyIndex]{
            p5 = p5 + 1
        }
        nextUglyIndex = nextUglyIndex + 1
    }
    
    return uglyArr[nextUglyIndex - 1]
}

nthUglyNumber(5)

