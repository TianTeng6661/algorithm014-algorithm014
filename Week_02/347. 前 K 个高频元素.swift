import UIKit


func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    
    guard nums.count > 0 else{
        return []
    }
    var dic = [Int:Int]()
    
    for (_, num) in nums.enumerated(){
        
        if(dic.keys.contains(num)){
            dic[num]! += 1
        }else{
            dic[num] = 1
        }
        
    }
    let sortRes = dic.sorted(by: {$0.value > $1.value})
    print(sortRes)
    
    return sortRes[0..<k].map{$0.key}
    
}

var nums = [8,2,3,4]
topKFrequent(nums, 2)
