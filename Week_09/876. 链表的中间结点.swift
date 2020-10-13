import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func middleNode(_ head: ListNode?) -> ListNode? {
    var slow = head
    var quick = head
    while (quick != nil && quick?.next != nil) {
        slow = slow?.next
        quick = quick?.next?.next
    }
    return slow
}















