import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    if(headA == nil || headB == nil){
        return nil
    }
    var pA = headA
    var pB = headB
    while (pA !== pB) {
        pA = (pA == nil ? headB : pA?.next)
        pB = (pB == nil ? headA : pB?.next)
    }
    return pA
}















