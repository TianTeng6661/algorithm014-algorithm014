import UIKit

class ListNode {
    
    public var value:Int
    public var next:ListNode?
    public init(_ value : Int){
        self.value = value
        self.next = nil
    }
    
}

func rotate(_ nums: inout [Int], _ k: Int) {
    
    if(k == 0){
        return
    }
    if(nums.count == 1 || nums.count == 0){
        return
    }
    
    var previous = 0
    
    for _ in 0..<k{
        //取出最后一个元素
        previous = nums[nums.count - 1]
        //将所有元素都后移(很明显，向右偏移 应该是最后的元素优先)
        var j = nums.count - 1
        while j>0 {
            nums[j] = nums[j-1]
            j=j-1
        }
        //! 此时 j=0，将之前取出的最后一个元素插入到最前面
        nums[0] = previous
    }

    
}

//var array = [1,2,3];
var array = [1,2,3,4,5,6,7];
//var array = [1,2];
rotate(&array, 2)

