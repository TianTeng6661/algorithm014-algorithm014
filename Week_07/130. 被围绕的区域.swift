import UIKit

func solve(_ board: inout [[Character]]) {
    
    if(board.count <= 0){
        return
    }
    let m = board.count //列
    let n = board[0].count //行
    //先处理4个边，找出没个边上O,以及与其相连的O,修改为@
    for i in 0 ..< m {
        dfs(&board, i, 0) //第一列
        dfs(&board, i, n - 1) //最后一列
    }
    for i in 0 ..< n {
        dfs(&board, 0, i) //第一行
        dfs(&board, m - 1, i) //最后一行
    }
    
    //将@更换为O,其他的O不更改
    for i in 0 ..< m {
        for j in  0 ..< n {
            if(board[i][j] == "@"){
                board[i][j] = "O"
            }else if(board[i][j] == "O"){
                board[i][j] = "X"
            }
        }
    }
    
}

func dfs(_ board:inout [[Character]], _ m:Int,_ n:Int) {
    if(m < 0 || m >= board.count || n < 0 || n >= board[0].count || board[m][n] != "O"){
        return
    }
    board[m][n] = "@"
    dfs(&board, m - 1, n)
    dfs(&board, m + 1, n)
    dfs(&board, m, n - 1)
    dfs(&board, m, n + 1)
}
















