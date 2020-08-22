import UIKit


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    guard nums.count >= 2 else {
        return []
    }
    var resultArr = [Int]()
    var dic = [Int:Int]()
    for (index, num) in nums.enumerated(){
        
        let miderNum = target - num;
        
        if(dic.keys.contains(miderNum) && dic[miderNum] != index){
            resultArr.append(dic[miderNum]!)
            resultArr.append(index)
            return resultArr
        }
        dic[num] = index;
        
    }
    
    return resultArr
    
    
}

var array = [3,3]
twoSum(array, 6)
