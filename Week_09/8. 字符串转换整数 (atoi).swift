import UIKit

func myAtoi(_ str: String) -> Int {
    //排除两端空格
    let tmpStr = str.trimmingCharacters(in: .whitespaces)
    //判断空串
    guard tmpStr.count > 0 else{
        return 0
    }
    let first = tmpStr.first!
    // 判断首字符是否合法(合法: 1.数字, 2."-", 3:"+")
    guard (first.isNumber || first == "-" || first == "+") else {
        return 0
    }
    var finalStr = ""
    //遍历取出数字
    for (index, value) in zip(0 ..< tmpStr.count, tmpStr){
        if index == 0 {
            if (value.isNumber || value == "-" || value == "+") {
                finalStr.append(value)
                continue
            }
        }else{
            if (value.isNumber){
                finalStr.append(value)
            }else{
                //数字后边的不要
                break
            }
        }
    }
    //如果只有符号
    guard finalStr != "+" else{
        return 0
    }
    guard finalStr != "-" else{
        return 0
    }
    //判断溢出
    let finalInt = Int32(finalStr)
    guard finalInt != nil else {
        return finalStr.contains("-") ? Int(Int32.min) : Int(Int32.max)
    }
    return Int(finalInt!)
}
print(myAtoi("  -78"))














