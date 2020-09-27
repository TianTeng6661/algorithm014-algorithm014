import UIKit

func exist(_ board: [[Character]], _ word: String) -> Bool {
    
    if(board.count == 0 || board[0].count == 0 || word.count == 0){
        return false
    }
    let array = Array(word)
    var board = board
    for i in 0 ..< board.count{
        for j in 0 ..< board[0].count{
            //从[i,j]这个坐标开始查找
            if(dfs(board: &board,array: array,i: i,j: j,index: 0)){
                return true
            }
        }
    }
    return false
}

func dfs(board:inout [[Character]],array:[Character],i:Int,j:Int,index:Int) -> Bool {
    //边界的判断，如果越界直接返回false,index表示的是查找到字符串word的第几个字符
    //如果这个字符不等于board[i][j],说明验证这个坐标路径是走不通的，直接返回false
    if( i >= board.count || i < 0 || j >= board[0].count || j < 0 || board[i][j] != array[index]){
        return false
    }
    //如果word的每个字符都查找完了，直接返回true
    if (index == array.count - 1){
        return true
    }
    //把当前坐标的值保存下来，为了最后复原
    let tmp = board[i][j]
    //然后修改当前坐标的值
    board[i][j] = "@"
    //走递归，沿着当前坐标的上下左右4个方向查找
    let res = dfs(board: &board, array: array, i: (i + 1), j: j, index: index + 1) || dfs(board: &board, array: array, i: (i - 1), j: j, index: index + 1) || dfs(board: &board, array: array, i: i, j: j + 1, index: index + 1) || dfs(board: &board, array: array, i: i, j: j - 1, index: index + 1)
    //递归之后再把当前的坐标复原
    board[i][j] = tmp
    return res
}

let board :[[Character]] = [
  ["A","B","C","E"],
  ["S","F","C","S"],
  ["A","D","E","E"]
]
print(exist(board, "ABCCED"))














