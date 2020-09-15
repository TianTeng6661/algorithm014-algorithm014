import UIKit


func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
    
    let m = obstacleGrid.count
    let n = obstacleGrid[0].count
    
    if (m == 0 || n == 0 || obstacleGrid[0][0] == 1){
        return 0
    }
    
    var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
    for i in 0 ..< m {
        for j in 0 ..< n {
            //判断是否是石头
            if(obstacleGrid[i][j] == 1){ //石头
                dp[i][j] = 0
            }else{
                if(i == 0 && j == 0){
                    dp[i][j] = 1
                }else if(i == 0){
                    dp[i][j] = dp[i][j - 1]
                }else if(j == 0){
                    dp[i][j] = dp[i - 1][j]
                }else{
                    dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
                }
            }
            
        }
    }
    return dp[m - 1][n - 1]
}

let str : [[Int]] = [
  [1,0]
]
print(uniquePathsWithObstacles(str))













