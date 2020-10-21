import UIKit

func reverseWords(_ s: String) -> String {
    
    if(s.count < 2){
        return s
    }
    let array = s.split(separator:" ") //以空格隔开
    var res = ""
    for (index,str) in array.enumerated() {
        var strArr = Array(str)
        res = res + turn(array: &strArr)
        if(index != (array.count - 1)){
            res = res + " "
        }
        
    }
    return res
}

func turn(array:inout [Character] ) -> String {
    var left = 0
    var right = array.count - 1
    while (left < right) {
        let temp = array[left]
        array[left] = array[right]
        array[right] = temp
        left += 1
        right -= 1
    }
    return String(array)
}

print(reverseWords("Let's take LeetCode contest"))












