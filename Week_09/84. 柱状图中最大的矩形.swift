import UIKit

func largestRectangleArea(_ heights: [Int]) -> Int {
    
    guard heights.count != 0 else {
        return 0
    }
    guard heights.count != 1 else {
        return heights.first!
    }
    
    //创建一个单调栈
    var stack = [-1,0]
    var maxArea = heights[0]
    for i in 1 ..< heights.count {
        let height = heights[i]
        if(height >= heights[stack[stack.count - 1]]){
            stack.append(i)
        }else{
            var changeStack = stack
            for j in (0 ..< stack.count).reversed() {
                let mainHeight = j == 0 ? 0 : heights[stack[j]]
                if height < mainHeight {
                    let area = mainHeight * (i - stack[j - 1] - 1)
                    if maxArea < area {
                        maxArea = area
                    }
                    changeStack.remove(at: j)
                }else{
                    changeStack.append(i)
                    break
                }
            }
            stack = changeStack
        }
    }
    
    if stack.count <= 1 {
        return maxArea
    }
    var changeStack = stack
    for i in (1 ..< stack.count).reversed() {
        let area = heights[stack[i]] * (stack[stack.count - 1] - stack[i - 1])
        if maxArea < area {
            maxArea = area
        }
        changeStack.remove(at: i)
    }
    return maxArea
}

let arr = [2,1,5,6,2,3]
print(largestRectangleArea(arr))














