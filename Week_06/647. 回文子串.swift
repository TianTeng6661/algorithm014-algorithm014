import UIKit


func countSubstrings(_ s: String) -> Int {
    
    guard s.count > 0 else {
        return 0
    }
    
    let key = "#"
    var stringArr = [String]()
    for char in s {
        stringArr.append("\(char)")
        stringArr.append(key)
    }
    stringArr.removeLast()
    var ans = 0
    for (index, string) in stringArr.enumerated(){
        if(string != key){
            ans += 1
        }
        var left = index - 1
        var right = index + 1
        while 0 <= left && right < stringArr.count {
            let leftChar = stringArr[left]
            let rightChar = stringArr[right]
            if (leftChar == rightChar){
                if(leftChar != key){
                    ans += 1
                }
            }else{
                break ;
            }
            left -= 1
            right += 1
        }
    }
    return ans
}

let str = "abc"
print(countSubstrings(str))













