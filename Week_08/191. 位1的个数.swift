import UIKit

func hammingWeight(_ n: Int) -> Int {
    var res = 0
    var n = n
    while n != 0 {
        res += 1
        n &=  (n - 1)
    }
    return res
}
















