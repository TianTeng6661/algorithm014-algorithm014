import UIKit

func longestValidParentheses(_ s: String) -> Int {
    if(s.count <= 1){
        return 0
    }
    if !s.contains(")"){
        return 0
    }
    var maxans = 0
     //dp[i]指以i下标为结尾的合法序列的最长长度
    var dp = [Int](repeating: 0, count: s.count)
    let arrS = Array(s)
    for i in 1 ..< arrS.count {
        //只有以")"结尾的才是合法序列，所以不考虑"("结尾的情况
        if arrS[i] == Character(")") {
            //右括号前边是 ( ，类似于 ……（）
            if arrS[i - 1] == Character("(") {
                //目判断保证数组不越界
                dp[i] = (i >= 2 ? dp[i - 2] : 0) + 2
            }else if ( i - dp[i - 1] > 0 && arrS[i - dp[i - 1] - 1] == Character("(")){
                //右括号前边是 )，类似于 ……））, 除去前边的合法序列的前边是左括号
                //当前位置的前一个合法序列的长度 + 匹配的左括号前边的合法序列的长度 + 新增的长度2
                //tmp:匹配的左括号前边的合法序列的长度
                let tmp = (i - dp[i - 1]) >= 2 ? dp[i - dp[i - 1] - 2] : 0
                dp[i] = dp[i - 1] + tmp + 2
            }
            //如果下标为i - dp[i - 1] - 1的不是"(", 下标i的匹配不上，dp[i]=0，不处理
            maxans = max(maxans, dp[i])
        }
    }
    return maxans
}
print(longestValidParentheses("())((())"))














