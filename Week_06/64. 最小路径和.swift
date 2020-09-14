import UIKit

func minPathSum(_ grid: [[Int]]) -> Int {
    
    if(grid.count == 0 || grid[0].count == 0){
        return 0
    }
    
    let row = grid.count
    let columns = grid[0].count
    
    var dp = [[Int]](repeating: [Int](repeating: 0, count: columns), count: row)
    dp[0][0] = grid[0][0]
    
    for i in 1 ..< row {
        dp[i][0] = dp[i - 1][0] + grid[i][0]
    }
    
    for j in 1 ..< columns {
        dp[0][j] = dp[0][j - 1] + grid[0][j]
    }
    
    for i in 1 ..< row {
        for j in 1 ..< columns {
            dp[i][j] = min(dp[i - 1][j], dp[i][j - 1]) + grid[i][j]
        }
    }
    return dp[row - 1][columns - 1]
    
}

let iosArray = [
  [1,3,1],
  [1,5,1],
  [4,2,1]
]
print(minPathSum(iosArray))













