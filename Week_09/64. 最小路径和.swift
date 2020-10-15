import UIKit

func minPathSum(_ grid: [[Int]]) -> Int {
    if(grid.count == 0 || grid[0].count == 0){
        return 0
    }
    var dp = [[Int]](repeating:[Int](repeating: 0, count: grid.count), count: grid[0].count)
    dp = grid
    for i in  0 ..< grid.count {
        for j in 0 ..< grid[0].count {
            if(i == 0 && j == 0){
                continue
            }else if(i == 0){
                dp[i][j] = dp[i][j - 1] + dp[i][j]
            }else if(j == 0){
                dp[i][j] = dp[i - 1][j] + dp[i][j]
            }else{
                dp[i][j] = min(dp[i - 1][j], dp[i][j - 1]) + dp[i][j]
            }
        }
    }
    return dp[grid.count - 1][grid[0].count - 1]
    
}














