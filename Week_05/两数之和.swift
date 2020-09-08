import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    guard nums.count > 1 else {
        return []
    }
    
    var dic = [Int:Int]()
    
    for (index, num) in nums.enumerated() {
        
        let temNum = target - num
        
        if(dic[temNum] != index && dic.keys.contains(temNum)){
            let result = [dic[temNum]!, index]
            return result
        }else{
            dic[num] = index
        }
    }
    
    return []
}

let iosArray = [3,2,4]
twoSum(iosArray, 6)









