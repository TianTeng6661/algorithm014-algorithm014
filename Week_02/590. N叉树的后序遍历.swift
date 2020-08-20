import UIKit

public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
    self.val = val
    self.children = []
     }
    
}

func postorder(_ root: Node?) -> [Int] {
    
    guard let root = root else{
        return []
    }
    var stack : [Node] = []
    var output:[Int] = []
    stack.append(root)
    while !stack.isEmpty {
        let node = stack.removeLast()
        output.insert(node.val,at:0)
        for child in node.children{
            if(child != nil){
                stack.append(child)
            }
        }
    }
    return output
}
