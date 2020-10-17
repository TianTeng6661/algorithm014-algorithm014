import UIKit

func numDistinct(_ s: String, _ t: String) -> Int {
    if (s.count == 0){
        return 0
    }
    if (t.count == 0){
        return s.count
    }
    let n = s.count + 1
    let m = t.count + 1
    let tArr = Array(t)
    let sArr = Array(s)
    var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
    //数组第一行赋值为1
    for i in 0 ..< n {
        dp[0][i] = 1
    }
    for i in 1 ..< m {
        for j in i ..< n {
            let a = tArr[i - 1]
            let b = sArr[j - 1]
            if(a == b){
                dp[i][j] = dp[i][j - 1] + dp[i - 1][j - 1]
            }else{
                dp[i][j] = dp[i][j - 1]
            }
        }
    }
    return dp[m - 1][n - 1]
}
print(numDistinct("rabbbit", "rabbit"))














