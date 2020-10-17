import UIKit

func lengthOfLastWord(_ s: String) -> Int {
    let ss = s.trimmingCharacters(in: CharacterSet.whitespaces) //移除前后空格，中间的保留
    let array = ss.components(separatedBy: " ")
    return array.last!.count
}
print(lengthOfLastWord("HelloW World  "))














