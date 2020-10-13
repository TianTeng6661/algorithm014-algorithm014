import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var newHead = head
    while (newHead != nil && newHead?.next != nil) {
        if(newHead?.val == newHead?.next?.val){
            newHead?.next = newHead?.next?.next
        }else{
            newHead = newHead?.next
        }
    }
    return newHead
    
}















