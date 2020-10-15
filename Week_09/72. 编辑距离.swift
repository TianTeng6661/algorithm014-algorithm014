import UIKit

func minDistance(_ word1: String, _ word2: String) -> Int {
    if (word1.count == 0 || word2.count == 0){
        return word1.count + word2.count
    }
    let array1 = Array(word1)
    let array2 = Array(word2)
    var dp = [[Int]](repeating: [Int](repeating: 0, count: array2.count + 1), count: array1.count + 1)
    for row in 0 ... array1.count {
        dp[row][0] = row
    }
    for column in 0 ... array2.count {
        dp[0][column] = column
    }
    for i in 1 ... array1.count {
        for j in 1 ... array2.count {
            if(array1[i - 1] == array2[j - 1]){
                dp[i][j] = dp[i - 1][j - 1]
            }else{
                dp[i][j] = min(dp[i - 1][j],dp[i][j - 1],dp[i - 1][j - 1]) + 1
            }
        }
    }
    return dp[array1.count][array2.count]
    
}














