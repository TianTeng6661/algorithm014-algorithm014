import UIKit


func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
    
    if (text1.count == 0 || text2.count == 0){
        return 0
    }
    let row = text2.count
    let col = text1.count
    var dp = [[Int]](repeating: [Int](repeating:0 , count: (col + 1)), count: (row + 1))
    
    let text1Arr = Array(text1)
    let text2Arr = Array(text2)
    
    for i in 1 ... row {
        for j in 1 ... col {
            
            if(text1Arr[j-1] == text2Arr[i-1]){
                dp[i][j] = dp[i - 1][j - 1] + 1
            }else{
                dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
            }
            
        }
    }
    return dp[row][col]
    
}

print(longestCommonSubsequence("abcde", "ace"))













