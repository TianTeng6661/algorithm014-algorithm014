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
    
    guard let root = root else {
        return nil
    }
    var queue = [Node]()
    queue.append(root)
    root.next = nil
    
    while !queue.isEmpty {
    
        var last:Node? = nil
        for i in 1 ... queue.count {
            let node = queue.removeFirst()
            if let leftNode = node.left {
                queue.append(leftNode)
            }
            if let rightNode = node.right {
                queue.append(rightNode)
            }
            if(i != 1){
                last!.next = node
            }
            last = node
        }
        for _ in queue {
        }
    }
    return root
}
















