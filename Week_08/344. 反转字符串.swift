import UIKit

func reverseString(_ s: inout [Character]) {
    let count = s.count
    var tem = count
    for i in 0 ..< count/2 {
        let first = s[i]
        let second = s[tem - 1]
        s[i] = second
        s[tem - 1] = first
        tem -= 1
    }
}
















