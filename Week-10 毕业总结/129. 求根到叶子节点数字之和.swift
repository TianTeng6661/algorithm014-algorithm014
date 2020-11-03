import UIKit

//树
class TreeNode{
    var  val:Int!
    var  left:TreeNode?
    var  right:TreeNode?
    init(_ val:Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

func sumNumbers(_ root: TreeNode?) -> Int {
    if(root == nil){
        return 0
    }
    
    return helper(root, 0)
}
func helper(_ root:TreeNode?,_ value:Int) -> Int {
    if(root == nil){
        return 0
    }
    let temp = value * 10 + root!.val
    if (root?.left == nil && root?.right == nil){
        return temp
    }
    return helper(root?.left, temp) + helper(root?.right, temp)
}











