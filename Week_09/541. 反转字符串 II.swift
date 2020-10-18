import UIKit

func reverseStr(_ s: String, _ k: Int) -> String {
    if(s.count == 0 || k == 0){
        return s
    }
    var array = Array(s)
    var i = 0
    while (i < array.count) {
        let right = i + k - 1
        if(right < array.count){
            reverseArray(array: &array, left: i, right: right)
        }else{
            reverseArray(array: &array, left: i, right: array.count - 1)
        }
        i = i + 2 * k
    }
    return String(array)
}
func reverseArray(array: inout Array<Character>, left: Int, right: Int){
    var left = left
    var right = right
    while (left < right) {
        let temp = array[left]
        array[left] = array[right]
        array[right] = temp
        left += 1
        right -= 1
    }
}

print(reverseStr("abcdefg", 2))












