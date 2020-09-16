import UIKit

func minimumTotal(_ triangle: [[Int]]) -> Int {
    
    if(triangle.count == 0 || triangle[0].count == 0){
        return 0
    }
    var dp :[[Int]] = triangle
    //从三角的最后一行开始递推
    for i in (0 ..< (triangle.count - 1)).reversed() {
        for j in 0 ..< dp[i].count {
            dp[i][j] += min(dp[i + 1][j], dp[i+1][j+1])
        }
    }
    return dp[0][0]
}

let iosArr : [[Int]] = [
[2],
[3,4],
[6,5,7],
[4,1,8,3]
]
print(minimumTotal(iosArr))













