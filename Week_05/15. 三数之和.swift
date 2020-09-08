import UIKit

func threeSum(_ nums: [Int]) -> [[Int]] {
    
    guard nums.count >= 3 else {
        return []
    }
    
    var resultArr = Set<[Int]>()
    let sortArr = nums.sorted()
    for num in 0 ..< sortArr.count {
        
        if(num > 0 && sortArr[num] == sortArr[num - 1]){
            continue
        }
        let target = 0 - sortArr[num]
        
        //对剩余的部分进行二分查找
        var low = num + 1
        var high = sortArr.count - 1
        while high > low {
            let midSum = sortArr[low] + sortArr[high]
            if(midSum == target){
                let temResult = [sortArr[num],sortArr[low],sortArr[high]]
                resultArr.insert(temResult)
                low += 1
                high -= 1
            }else if(midSum > target){
                high -= 1
            }else{
                low += 1
            }
        }
        
    }
    let newArr = resultArr.map{$0}
    return newArr
}









