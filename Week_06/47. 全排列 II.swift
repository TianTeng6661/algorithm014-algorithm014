import UIKit

func permuteUnique(_ nums: [Int]) -> [[Int]] {
    
    guard nums.count != 0 else {
        return []
    }
    var res = Set<[Int]>()
    var track = [Int]()
    var used = [Bool](repeating: false, count: nums.count)
    backtrack(nums, track: &track, used: &used, res: &res)
    return res.map{ $0 }
    
}

func backtrack(_ nums:[Int], track:inout [Int], used:inout[Bool],res:inout Set<[Int]>){
    if track.count == nums.count{
        let r = track
        res.insert(r)
        //res.append(r)
        return
    }
    for (i , num) in nums.enumerated(){
        if(used[i]){
            continue
        }
        if (i > 0 && nums[i] == nums[i - 1] && !used[i - 1]) {
            continue
        }
        used[i] = true
        track.append(num)
        backtrack(nums, track: &track, used: &used, res: &res)
        track.removeLast()
        used[i] = false
    }
}

print(permuteUnique([1, 2]))













