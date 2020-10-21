import UIKit

func longestCommonPrefix(_ strs: [String]) -> String {
    if (strs.count == 0){
        return ""
    }
    if(strs.count == 1){
        return strs.first!
    }
    var strArr = strs
    var firstStr = strArr.removeFirst()
    for str in strArr {
        // 计算两个字符串的公共前缀
        var newStr = ""
        let oneArr = Array(firstStr)
        let twoArr = Array(str)
        let count = min(oneArr.count, twoArr.count)
        for index in 0 ..< count {
            let oneChar = oneArr[index]
            let twoChar = twoArr[index]
            if(oneChar == twoChar){
                newStr = newStr + String(twoChar)
            }else{
                break
            }
        }
        firstStr = newStr
    }
    return firstStr
    
}

let arr = ["cir","car"]
print(longestCommonPrefix(arr))












