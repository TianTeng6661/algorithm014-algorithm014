import UIKit


func climbStairs(_ n: Int) -> Int {
    guard  n > 2 else{
        return n
    }
    
    var array = [Int]()
    
    array.append(0)
    array.append(1)
    array.append(2)
    
    var tag = 3
    while tag <= n {
        array.append(array[tag-1]+array[tag-2])
        tag += 1
    }
    
    return array[n]
    

}
climbStairs(4)
