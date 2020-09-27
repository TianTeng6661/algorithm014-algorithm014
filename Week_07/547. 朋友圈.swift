import UIKit

var friend = [[Int]]()
var num = 0
func findCircleNum(_ M: [[Int]]) -> Int {
    
    var count = 0
    friend = M
    num = friend.count
    for i in 0 ..< num {
        for j in 0 ..< num {
            if(friend[i][j] == 1){
                count += searchBFS(i,j)
            }
        }
    }
    return count
}

func searchBFS(_ x:Int,_ y:Int) -> Int{
    if(friend[x][y] == 0 && friend[y][x] == 0){
        return 0
    }
    for i in 0 ..< num{
        if(friend[x][i] == 1){
            friend[x][i] = 0
            searchBFS(i, x)
        }
    }
    return 1
}

let arr :[[Int]] = [
    [1,0,0,1],
    [0,1,1,0],
    [0,1,1,1],
    [1,0,1,1]
]
print(findCircleNum(arr))















