import UIKit

func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
    
    guard candidates.count != 0 else {
        return []
    }
    var resultArr = Set<[Int]>()
    var tempArr = [Int]()
    //排序是剪枝的前提
    let newCandArr = candidates.sorted()
    dfs(resultArr: &resultArr, temArr: &tempArr, candidates: newCandArr, begin: 0, target: target)
    let newArr = resultArr.map{$0}
    return newArr
}

func dfs(resultArr:inout Set<[Int]>, temArr:inout [Int], candidates:[Int], begin:Int ,target:Int) {
    
    if(target == 0){
        resultArr.insert(temArr)
        return
    }
    for statr in begin ..< candidates.count {
        if((target - candidates[statr]) < 0){ //剪枝的关键步骤
            break
        }
        temArr.append(candidates[statr])
        dfs(resultArr: &resultArr, temArr: &temArr, candidates: candidates, begin: (statr + 1), target: (target - candidates[statr]))
        temArr.removeLast()
    }
}

let iosArray = [10,1,2,7,6,1,5]
print(combinationSum2(iosArray, 8))













