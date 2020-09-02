import UIKit


func generateParenthesis(_ n: Int) -> [String] {
 
    var resultArr = [String]()
    guard n != 0 else{
        return resultArr
    }
    dfs(result: &resultArr, currentStr: "", left: n, right: n)
    return resultArr
}

func dfs(result:inout [String],currentStr:String,left:Int,right:Int){
    if(left == 0 && right == 0){
        result.append(currentStr)
        return
    }
    if(left > right){
        return
    }
    if(left > 0){
        dfs(result: &result, currentStr: currentStr + "(", left: (left - 1), right: right)
    }
    if(right > 0){
        dfs(result: &result, currentStr: currentStr+")", left: left, right: (right - 1))
    }
}

generateParenthesis(3)
