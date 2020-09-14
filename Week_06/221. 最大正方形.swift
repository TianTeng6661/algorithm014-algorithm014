import UIKit

func maximalSquare(_ matrix: [[Character]]) -> Int {
    
    var maxSize = 0
    if(matrix.count == 0 || matrix[0].count == 0){
        return maxSize
    }
    
    let rows = matrix.count
    let columns = matrix[0].count
    
    var dp = [[Int]](repeating: [Int](repeating: 0, count: columns), count: rows)
    
    for i in 0 ..< rows {
        for j in 0 ..< columns {
            if(matrix[i][j] == "1"){
                if(i == 0 || j == 0){
                    dp[i][j] = 1
                }else{
                    dp[i][j] = min(dp[i - 1][j], dp[i][j-1], dp[i - 1][j - 1]) + 1
                }
                maxSize = max(maxSize, dp[i][j])
            }
        }
    }
    
    let maxSquare = maxSize * maxSize
    return maxSquare
    
}


let str : [[Character]] = [
    ["1", "0", "1", "0", "0"],
    ["1", "0", "1", "1", "1"],
    ["1", "1", "1", "1", "1"],
    ["1", "0", "0", "1", "0"]
]

print(maximalSquare(str))













