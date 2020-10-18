import UIKit

func reverseWords(_ s: String) -> String {
    if(s.count == 0){
        return s
    }
    let ss = s.trimmingCharacters(in: CharacterSet.whitespaces) //移除前后空格，中间的保留
    //将字符串间多余的空白字符去除
    var array = [Character]()
    for charr in ss {
        if(charr != " "){
            array.append(charr)
        }else{
            if(array.last != " "){
                array.append(charr)
            }
        }
    }
    
    var tempArr = [Character]()
    var ansStr = ""
    for newStr in array.reversed() {
        if(newStr != " "){
            tempArr.insert(newStr, at: 0)
        }else{
            tempArr.append(" ")
            ansStr = ansStr + String(tempArr)
            tempArr.removeAll()
        }
    }
    //处理最后一个单词
    ansStr = ansStr + "" + String(tempArr)
    return ansStr
}

print(reverseWords("the sky is blue"))












