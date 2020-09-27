import UIKit

func isValidSudoku(_ board: [[Character]]) -> Bool {
    //用三个数组分别存放行、列、3X3的每种符号出现的次数
    var row:[[Int]] = Array(repeating: Array(repeating: 0, count: 9), count: 9)
    var col:[[Int]] = Array(repeating: Array(repeating: 0, count: 9), count: 9)
    var square:[[Int]] = Array(repeating: Array(repeating: 0, count: 9), count: 9)
    for i in 0 ..< 9{
        for j in 0 ..< 9 {
            if board[i][j] == "." {
                continue
            }
            let t:Int = Int(String(board[i][j]))! - 1
            row[i][t] += 1
            col[j][t] += 1
            square[(i / 3) * 3 + j/3][t] += 1
            if(row[i][t] > 1 || col[j][t] > 1 || square[(i / 3) * 3 + j/3][t] > 1){
                return false
            }
        }
    }
    return true
}

















