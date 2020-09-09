import UIKit

func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var res = [[Int]]()
    guard candidates.count != 0 else {
        return res
    }
    let sortArr = candidates.sorted() //排序是剪枝的前提
    var path = [Int]()
    dfs(sortArr, begin: 0, len: sortArr.count, target: target, path: &path, res: &res)
    return res
}
func dfs(_ candidates: [Int], begin:Int, len:Int,target:Int,path:inout [Int],res:inout [[Int]]) {
    //由于进入更深层的时候，小于0 的部分被剪枝，因此递归终止条件只判断等于0的情况
    if(target == 0){
        res.append(path)
        return
    }
    for i in begin ..< len {
        //重点理解这里剪枝，前提是候选数组已经有序
        if(target - candidates[i] < 0){
            break;
        }
        path.append(candidates[i])
        dfs(candidates, begin: i, len: len, target: (target - candidates[i]), path: &path, res: &res)
        path.removeLast()
    }
    
}
let iosArray = [2,3,6,7]
combinationSum(iosArray,7)









