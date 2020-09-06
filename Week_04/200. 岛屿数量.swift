import UIKit

func numIslands(_ grid: [[Character]]) -> Int {
    
    guard !grid.isEmpty else {
        return 0
    }
    var newGrid:[[Character]] = grid
    let width :Int = newGrid[0].count //宽度
    let hight :Int = newGrid.count //高度
    var isLandCount :Int = 0 //结果
    var queue = [(row:Int,column:Int)]() //队列临时存放待探索的网格坐标
    //遍历整个网格
    for (rowIndex, rows) in newGrid.enumerated(){
        for (columnIndex, _) in rows.enumerated(){
            if newGrid[rowIndex][columnIndex] == "1"{ //发现陆地
                isLandCount += 1
                newGrid[rowIndex][columnIndex] == "2" //将当前陆地标记为已搜索
                queue.append((rowIndex,columnIndex)) //将陆地坐标加入到队列中
                //以当前队列中的陆地为出发点，对周围大陆进行广度优先遍历
                while !queue.isEmpty {
                    let curr: (row:Int,column:Int) = queue.removeFirst()
                    //探索上面网格
                    if curr.row - 1 >= 0 && newGrid[curr.row - 1][curr.column] == "1" {
                        
                        newGrid[curr.row - 1][curr.column] = "2"   //将当前陆地网格标记为已探索 下同
                        queue.append((curr.row - 1, curr.column))   //将陆地坐标加入到队列中 下同
                    }
                    
                    //探索下面网格
                    if curr.row + 1 < hight && newGrid[curr.row + 1][curr.column] == "1" {
                        
                        newGrid[curr.row + 1][curr.column] = "2"
                        queue.append((curr.row + 1, curr.column))
                    }
                    
                    //探索左边网格
                    if curr.column - 1 >= 0 && newGrid[curr.row][curr.column - 1] == "1" {
                        
                        newGrid[curr.row][curr.column - 1] = "2"
                        queue.append((curr.row, curr.column - 1))
                    }
                    
                    //探索右边网格
                    if curr.column + 1 < width && newGrid[curr.row][curr.column + 1] == "1" {
                        
                        newGrid[curr.row][curr.column + 1] = "2"
                        queue.append((curr.row, curr.column + 1))
                    }

                }
            }
        }
    }
    return isLandCount
}
var iosArr:[[Character]] = [
    ["1","1","1","1","0"],
    ["1","1","0","1","0"],
    ["1","1","0","0","0"],
    ["0","0","0","0","0"]
]
numIslands(iosArr)



