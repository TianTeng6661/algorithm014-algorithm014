import UIKit

func oddEvenList(_ head: ListNode?) -> ListNode? {
    
    if (head == nil){
        return head
    }
    let evenHead = head?.next
    var odd = head
    var even = evenHead
    while (even != nil && even?.next != nil) {
        odd?.next = even?.next
        odd = odd?.next
        even?.next = odd?.next
        even = even?.next
    }
    odd?.next = evenHead
    return head
    
}

 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }








