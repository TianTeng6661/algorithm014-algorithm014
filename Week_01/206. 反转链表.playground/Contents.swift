import UIKit

class ListNode {
    
    public var value:Int
    public var next:ListNode?
    public init(_ value : Int){
        self.value = value
        self.next = nil
    }
    
}

func reverseList(_ head: ListNode?) -> ListNode? {
    
    var oldNode = head
    var newNode : ListNode? = nil
    
    while oldNode != nil {
        //保存next
        let oldNextNode = oldNode?.next
        //修改next
        oldNode?.next = newNode
        //修改newNoed
        newNode = oldNode
        //修改oldNode 指向下一个节点
        oldNode = oldNextNode
    }
    
    return newNode
    
}

