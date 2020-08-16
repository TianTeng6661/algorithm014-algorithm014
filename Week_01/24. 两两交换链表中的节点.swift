import UIKit

class ListNode {
    
    public var value:Int
    public var next:ListNode?
    public init(_ value : Int){
        self.value = value
        self.next = nil
    }
    
}

func swapPairs(_ head: ListNode?) -> ListNode? {
    
    if(head == nil || head?.next == nil){
        return head
    }
    
    let firstNode = head
    let secondNode = head?.next
    
    firstNode?.next = swapPairs(secondNode?.next)
    secondNode?.next = firstNode
    
    return secondNode
}

