import UIKit


func uniquePaths(_ m: Int, _ n: Int) -> Int {
    
    if (m == 0 || n == 0){
        return 0
    }
    var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
    for i in 0 ..< m {
        for j in 0 ..< n {
            
            if(i == 0 || j == 0){
                dp[i][j] = 1
            }else{
                dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
            }
        }
    }
    return dp[m - 1][n - 1]
}

print(uniquePaths(3, 2))













