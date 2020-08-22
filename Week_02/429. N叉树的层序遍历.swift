import UIKit

public class Node {
     public var val: Int
     public var children: [Node]
     public init(_ val: Int) {
         self.val = val
         self.children = []
     }
}

func levelOrder(_ root: Node?) -> [[Int]] {
    
    guard let root = root else{
        return []
    }
    
    var  resultArr = [[Int]]()
    var queueArr = [Node]()
    queueArr.append(root)
    
    while !queueArr.isEmpty {
        
        var listArr = [Int]()
        let size = queueArr.count
        for _ in 0 ..< size{
            let nextNode :Node = queueArr.first!
            queueArr.remove(at: 0)
            listArr.append(nextNode.val)
            queueArr.append(contentsOf: nextNode.children)
        }
        resultArr.append(listArr)
    }
    return resultArr
    
}
