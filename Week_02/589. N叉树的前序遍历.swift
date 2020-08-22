import UIKit

public class Node {
     public var val: Int
     public var children: [Node]
     public init(_ val: Int) {
         self.val = val
         self.children = []
     }
 }

func preorder(_ root: Node?) -> [Int] {
     if root == nil {
        return [Int]()
    }

    var resultList: [Int] = [Int]()
    /// 层序遍历
    /// 先找到父节点
     var nodeList: [Node] = [root!]
     
     while !nodeList.isEmpty {
      
        let rootNode: Node? = nodeList.removeLast()
        resultList.append(rootNode!.val)
        
        if rootNode?.children.count != 0 {
            /// 添加所有子节点
            for node in rootNode!.children.reversed() {
                nodeList.append(node)
            }
        }
        
    }
    
    return resultList
}
