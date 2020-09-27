import UIKit

func numIslands(_ grid: [[Character]]) -> Int {
    guard !grid.isEmpty else {
        return 0
    }
    var newGrid = grid
    let row = grid.count
    let line = grid[0].count
    var resCount = 0
    var queue = [(row:Int,line:Int)]() //队列
    //遍历整个网格
    for (rowIndex, rows) in grid.enumerated() {
        for (lineNum, _) in rows.enumerated(){
            if(newGrid[rowIndex][lineNum] == "1"){ //发现陆地
                resCount += 1
                newGrid[rowIndex][lineNum] = "2" //将当前陆地标记为已搜索
                queue.append((rowIndex,lineNum))
                
                while !queue.isEmpty {
                    let curren:(row:Int,line:Int) = queue.removeFirst()
                    if curren.row - 1 >= 0 && newGrid[curren.row - 1][curren.line] == "1" {
                        newGrid[curren.row - 1][curren.line] = "2"
                        queue.append((curren.row - 1, curren.line))
                    }
                    if curren.row + 1 < row && newGrid[curren.row + 1][curren.line] == "1" {
                        newGrid[curren.row + 1][curren.line] = "2"
                        queue.append((curren.row + 1, curren.line))
                    }
                    if curren.line - 1 >= 0 && newGrid[curren.row][curren.line - 1] == "1" {
                        newGrid[curren.row][curren.line - 1] = "2"
                        queue.append((curren.row , curren.line - 1))
                    }
                    if curren.line + 1 < line && newGrid[curren.row][curren.line + 1] == "1" {
                        newGrid[curren.row][curren.line + 1] = "2"
                        queue.append((curren.row, curren.line + 1))
                    }
                }
                
            }
        }
    }
    
    return resCount
    
}















