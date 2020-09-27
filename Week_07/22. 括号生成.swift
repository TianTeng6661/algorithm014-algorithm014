import UIKit

func generateParenthesis(_ n: Int) -> [String] {
    guard n != 0 else {
        return []
    }
    var resultArray = [String]()
    dfs(resultArr: &resultArray, currentStr: "", left: n, right: n)
    return resultArray
}

func dfs(resultArr:inout [String], currentStr:String,left:Int,right:Int) {
    if(left == 0 && right == 0){
        resultArr.append(currentStr)
        return
    }
    if(left > right){
        return
    }
    if(left > 0){
        dfs(resultArr: &resultArr, currentStr: currentStr+"(", left: (left - 1), right: right)
    }
    if(right > 0){
        dfs(resultArr: &resultArr, currentStr: currentStr+")", left: left, right: (right - 1))
    }
}

print(generateParenthesis(3))
















