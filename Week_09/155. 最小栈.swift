import UIKit

class MinStack {
    
    private var stack :[Int]
    private var minStack :[Int]
    /** initialize your data structure here. */
    init() {
        stack = [Int]()
        minStack = [Int]()
    }
    
    func push(_ x: Int) {
        stack.append(x)
        if(minStack.count == 0){
            minStack.append(x)
            return
        }else{
            let oldMin = minStack.last
            minStack.append(min(oldMin!, x))
        }
        
    }
    
    func pop() {
        stack.popLast()
        minStack.popLast()
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        return minStack.last!
    }
}














