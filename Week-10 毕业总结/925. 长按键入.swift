import UIKit

func isLongPressedName(_ name: String, _ typed: String) -> Bool {
    var i = 0
    var j = 0
    let nameArr = Array(name)
    let typedArr = Array(typed)
    while (j < typed.count) {
        if(i < name.count && nameArr[i] == typedArr[j]){
            i += 1
            j += 1
        }else if(j > 0 && typedArr[j] == typedArr[j - 1]){
            j += 1
        }else{
            return false
        }
    }
    return i == name.count
}











