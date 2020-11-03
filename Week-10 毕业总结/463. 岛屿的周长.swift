import UIKit

func islandPerimeter(_ grid: [[Int]]) -> Int {
    
    var newGrid = grid
    for r in 0 ..< grid.count {
        for c in 0 ..< grid[0].count{
            if(grid[r][c] == 1){
                return dfs(grid: &newGrid, r: r, c: c)
            }
        }
    }
    return 0
}
func dfs(grid:inout [[Int]], r:Int, c:Int) -> Int {
    if(!(0 <= r && r < grid.count && c >= 0 && c<grid[0].count)){
        return 1
    }
    if(grid[r][c] == 0){
        return 1
    }
    if(grid[r][c] != 1){
        return 0
    }
    grid[r][c] = 2
    return (dfs(grid: &grid, r: r-1, c: c) + dfs(grid: &grid, r: r, c: c - 1) + dfs(grid: &grid, r: r+1, c: c)+dfs(grid: &grid, r: r, c: c+1))
}










