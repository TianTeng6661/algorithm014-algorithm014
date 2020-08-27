import UIKit


public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
    }
    
}

func invertTree(_ root: TreeNode?) -> TreeNode? {

    guard let root = root else {
        return nil
    }
    let temp = root.left
    root.left = root.right
    root.right = temp
    
    invertTree(root.left)
    invertTree(root.right)
    return root
    
}


