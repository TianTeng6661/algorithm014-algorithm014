import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func deleteNode(_ node: ListNode?) {
    node!.val = node!.next!.val
    node?.next = node?.next?.next
}















