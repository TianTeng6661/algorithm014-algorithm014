import UIKit

func solveNQueens(_ n: Int) -> [[String]] {
    
    var res = [[String]]()
    var track = [String](repeating: String([Character](repeating: ".", count: n)), count: n)
    backtrack(n: n, track: &track, row: 0, res: &res)
    return res
}

func backtrack(n: Int, track: inout [String], row: Int, res: inout [[String]]) {
    if (row > n - 1){
        let r = track
        res.append(r)
        return
    }
    for col in 0 ..< n {
        if !isValidForQueen(track: track, row: row, col: col){
            continue
        }
        var chars = [Character](track[row])
        chars[col] = "Q"
        track[row] = String(chars)
        backtrack(n: n, track: &track, row: row + 1, res: &res)
        chars[col] = "."
        track[row] = String(chars)
    }
}

func isValidForQueen(track: [String], row: Int, col: Int) -> Bool {
    //检查正上方 col不变
    for i in 0 ..< row {
        if [Character](track[i])[col] == "Q" {
            return false
        }
    }
    //检查右上方  row + col == k
    var i = row - 1
    var j = col + 1
    while i >= 0 && j < track.count {
        if [Character](track[i])[j] == "Q" {
            return false
        }
        i -= 1
        j += 1
    }
    //检查左上方  row - col == k
    i = row - 1
    j = col - 1
    while i >= 0 && j >= 0 {
        if [Character](track[i])[j] == "Q" {
            return false
        }
        i -= 1
        j -= 1
    }
    
    return true
}

print(solveNQueens(8))
















