import UIKit

func generateParenthesis(_ n: Int) -> [String] {
    
    var result = [String]()
    
    guard n != 0 else{
        return result
    }
    //执行深度优先遍历，搜索可能的结果
    
    dfs(curStr: "", left: n, right: n, res: &result)
    return result
}

func dfs(curStr:String, left:Int, right:Int, res:inout [String]){
    if(left == 0 && right == 0){
        res.append(curStr)
        return
    }
    
    //剪枝
    if(left > right){
        return
    }
    
    if(left > 0){
        dfs(curStr: curStr+"(", left: left - 1, right: right, res: &res)
    }
    
    if(right > 0){
        dfs(curStr: curStr+")", left: left, right: right-1, res: &res)
    }
    
}

generateParenthesis(3)
