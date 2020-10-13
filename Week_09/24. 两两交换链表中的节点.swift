import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func swapPairs(_ head: ListNode?) -> ListNode? {
    
    let dum  = ListNode.init(0)
    dum.next = head
    var temp = dum
    while (temp.next != nil && temp.next?.next != nil) {
        let start = temp.next
        let end = temp.next?.next
        temp.next = end
        start?.next = end?.next
        end?.next = start
        temp = start!
    }
    return dum.next
}















