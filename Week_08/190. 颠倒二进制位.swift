import UIKit

func reverseBits(_ n: Int) -> Int {
    var n = n
    var res = 0
    var power = 31
    while n != 0 {
        res += (n&1) << power
        n = n >> 1
        power -= 1
    }
    return res
}
















