import UIKit

//单向链表
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func hasCycle(_ head: ListNode?) -> Bool {
    guard head != nil else {
        return false
    }
    var low = head?.next
    var quick = head?.next?.next
    
    while quick != nil {
        if(quick === low){
            return true
        }
        quick = quick?.next?.next
        low = low?.next
    }
    return false
}
















