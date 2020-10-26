import UIKit

func reverseOnlyLetters(_ S: String) -> String {
    if(S.count < 2){
        return S
    }
    var sArr = Array(S)
    var i = 0
    var j = sArr.count - 1
    while (i < j) {
        if(!sArr[i].isLetter){
            i += 1
        }else if(!sArr[j].isLetter){
            j -= 1
        }else{
            let temp = sArr[i]
            sArr[i] = sArr[j]
            sArr[j] = temp
            i += 1
            j -= 1
        }
    }
    return String(sArr)
    
}












