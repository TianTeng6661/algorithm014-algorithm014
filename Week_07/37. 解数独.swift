import UIKit

var rows = Array.init(repeating: Array.init(repeating: 0, count: 9), count: 9) //表示该行出现过的数字
var cols = Array.init(repeating: Array.init(repeating: 0, count: 9), count: 9) //表示该列出现过的数字
var gards = Array.init(repeating: Array.init(repeating: 0, count: 9), count: 9) //表示当前九宫格中出现过的数字
var spaces = [(Int,Int)]() //用来存放未填写的空格

func solveSudoku(_ board: inout [[Character]]) {
    //先遍历数据，填充rows,cols,gards,spaces
    for (rowIndex, rowValue) in board.enumerated() {
        for (colIndex,colValue) in rowValue.enumerated(){
            if colValue == "."{
                spaces.append((rowIndex,colIndex))
            }else{
                let vInt = Int(String(colValue))! - 1
                rows[rowIndex][vInt] = 1
                cols[colIndex][vInt] = 1
                gards[rowIndex/3*3 + colIndex/3][vInt] = 1
            }
        }
    }
    solveSudokuDFS(&board, 0)
}
func solveSudokuDFS(_ board:inout [[Character]], _ pos:Int) -> Bool {
    guard pos < spaces.count else {
        return true
    }
    let space = spaces[pos]
    let row = space.0,col = space.1
    let grid = row/3*3 + col/3
    for item in 1 ... 9 {
        if(rows[row][item - 1] == 1 || cols[col][item - 1] == 1 || gards[grid][item - 1] == 1){
            continue
        }
        board[row][col] = Character(String(item))
        rows[row][item - 1] = 1
        cols[col][item - 1] = 1
        gards[grid][item - 1] = 1
        if(solveSudokuDFS(&board, pos + 1)){
            return true
        }
        board[row][col] = "."
        rows[row][item - 1] = 0
        cols[col][item - 1] = 0
        gards[grid][item - 1] = 0
    }
    return false
}

















