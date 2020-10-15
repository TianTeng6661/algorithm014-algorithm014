import UIKit

public class Node {
     public var val: Int
     public var left: Node?
     public var right: Node?
       public var next: Node?
     public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
         self.next = nil
     }
 }

func connect(_ root: Node?) -> Node? {
    if(root == nil){
        return root
    }
    var queue = [Node]()
    queue.append(root!)
    while (!queue.isEmpty) {
        
        var curNode : Node?
        var preNode : Node?
        
        for index in 0 ..< queue.count {
            curNode = queue.removeFirst()
            if(index == 0){
                preNode = curNode
            }else{
                preNode?.next = curNode
                preNode = curNode
            }
            
            if let leftNode = curNode!.left {
                queue.append(leftNode)
            }
            if let rightNode = curNode!.right {
                queue.append(rightNode)
            }
        }
    }
    return root
    
}














