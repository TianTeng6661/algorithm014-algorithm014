import UIKit

public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    if(head == nil){
        return head
    }
    if n == 0 {
        return head
    }
    if head?.next == nil && n >= 1 {
        return nil
    }
    
    let dummy = ListNode(0)
    dummy.next = head
    var fastNode:ListNode? = dummy
    var slowNode:ListNode? = dummy
    for _ in 1 ... n+1 { //快指针先走n+1步
        fastNode = fastNode?.next
    }
    while fastNode != nil {
        fastNode = fastNode?.next
        slowNode = slowNode?.next
    }
    slowNode?.next = slowNode?.next?.next
    return dummy.next
    
}














