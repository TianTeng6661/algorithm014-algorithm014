import UIKit

func isPowerOfTwo(_ n: Int) -> Bool {
    guard n != 0 else {
        return false
    }
    let newN = n
    return newN & (newN - 1) == 0
}
















