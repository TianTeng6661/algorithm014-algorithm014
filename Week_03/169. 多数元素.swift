import UIKit

func majorityElement(_ nums: [Int]) -> Int {
    
    var map = [Int:Int]()
    for num in nums {
        map[num] = (map[num] == nil ? 1 : map[num]!+1)
        if(map[num]! > nums.count/2){
            return num
        }
        
    }
    return 0
}

var array = [3,2,3]

majorityElement(array)


