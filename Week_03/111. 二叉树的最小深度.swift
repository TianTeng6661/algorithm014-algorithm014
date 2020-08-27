import UIKit

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

class Solution {
    static   var  lastsequence = [TreeNode]()
    /// 还原二叉树
    ///
    /// - Parameters:
    ///   - pre: 前序序列    abcdefg
    ///   - mid: 中序序列
    /// - Returns: 返回二叉树
    static  func  resumeNodeTree(_ pre:[Int],_ mid:[Int]) -> TreeNode?{
        if  pre.count == 0 || mid.count == 0 || pre.count != mid.count{
            
            assert(true, "前序序列或中序序列输入不正确")
            return nil
        }
        //找到根节点
        let   rootnode = TreeNode(pre[0])
        //用于存储待递归的左子树中序序列
        var    leftin = [Int]()
        //用于存储待递归的左子树的前序序列
        var  leftpre = [Int]()
        //用于存储待递归的右子树中序序列
        var  rightin = [Int]()
        //用于存储待递归的右子树前序序列
        var  rightpre = [Int]()
        
        // 前序遍历{1,2,4,7,3,5,6,8}和中序遍历序列{4,7,2,1,5,3,8,6}
        // 该树还原         1
        //               /  \
        //              2    3
        //             /    /  \
        //            4    5    6
        //             \        /
        //              7      8
        //
        // 后序遍历的序列则为 7 4 2 5 8 6 3 1  到此还原完成  还原的过程则是后序遍历的序列
        // 找出根节点在中序序列的位置索引
        var   rootpos  = 0
        for   i in 0 ..< mid.count {
            if  mid[i] == pre[0]{
                rootpos = i
            }
        }
        //左边部分为左子树 构建左子树的前序序列和中序序列
        for  i in 0..<rootpos{
            leftin.append(mid[i])
            leftpre.append(pre[i+1])
        }
        //右边边部分为右子树 构建右子树的前序序列和中序序列
        for  i in rootpos+1..<mid.count{
            rightin.append(mid[i])
            rightpre.append(pre[i])
        }
        //递归查找左子树
        rootnode.left  = resumeNodeTree(leftpre, leftin)
        //递归查找右子树
        rootnode.right  = resumeNodeTree(rightpre, rightin)
        //到此位置整个二叉树的还原就是后序遍历 类似告诉前中后的原理一样 任意的给两个序列，倒推的过程就是剩下的序列遍历
        lastsequence.append(rootnode)
        return  rootnode
    }
    
}

func maxDepth(_ root: TreeNode?) -> Int {
    
    guard let root = root else {
        return 0
    }
    if(root.left == nil && root.right == nil){
        return 1
    }
    var count = Int.max
    if let leftRoot = root.left{
        count = min(maxDepth(leftRoot), count)
    }
    if let rightRoot = root.right{
        count = min(maxDepth(rightRoot), count)
    }
    return (count + 1)
}

var rootnode:TreeNode? = Solution.resumeNodeTree([1,2], [2,1])

maxDepth(rootnode)

//threeSum(array)
