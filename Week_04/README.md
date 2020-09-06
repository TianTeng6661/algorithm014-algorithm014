学习笔记

第四周已经过去，这周所讲的内容包括二叉树的遍历，其中包括广度优先和深度优先，然后是贪心算法及其二分查找。这其中自己在按照超哥所讲做题的过程中，发下自己对于贪心算法掌握的不是很好，意思能明白，但是做题不能够及时的应用上，也做不到举一反三，相对于掌握树的遍历和二分查找到是更好点。

对于贪心算法的题目，自己做出来的结果并不好，而是这一类，但是看难度是中等，自己还是有点失望的，中等的难度自己就不会了，比如单词接龙，岛屿数量，扫雷游戏等，所以自己还是得多看其他人的解释和多练习。

超哥出的使用二分查找找到旋转排序数组中的转换节点，我的思路和找到最小值相同，只是这次不再在是输出最小值了，而是输出最小值所以对应的下标，代码如下：


import UIKit

func findMin(_ nums: [Int]) -> Int {
    
    let numsCount = nums.count
    guard numsCount != 0 else {
        return 0
    }
    if(numsCount == 1){
        return 0
        //return nums[0]
    }
    if(nums[0] < nums[numsCount - 1]){
        return 0
        //return nums[0]
    }
    
    var low = 0
    var hight = numsCount - 1
    
    while hight >= low {
        let mid = (low + hight)/2
        if(nums[mid] > nums[mid + 1]){
            return (mid + 1)
            //return nums[mid + 1]
            
        }
        if(nums[mid - 1] > nums[mid]){
            return mid
            //return nums[mid]
        }
        if(nums[0] < nums[mid]){
            low = mid + 1
        }else{
            hight = mid - 1
        }
    }
    return -1
    
}

var iosArr = [4, 5, 6, 7, 0, 1, 2]
findMin(iosArr)


后边的内容更加重要，再接再厉吧
