import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    let dum = ListNode(0)
    dum.next = head
    var temp = dum
    while (temp.next != nil) {
        if(temp.next?.val == val){
            temp.next = temp.next?.next
        }else{
            temp = temp.next!
        }
    }
    return dum.next
}















