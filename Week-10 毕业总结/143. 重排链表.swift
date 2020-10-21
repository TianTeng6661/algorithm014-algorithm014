import UIKit

public class ListNode {
   public var val: Int
   public var next: ListNode?
   public init() { self.val = 0; self.next = nil; }
   public init(_ val: Int) { self.val = val; self.next = nil; }
   public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func reorderList(_ head: ListNode?) {
    var p = head
    var array = [ListNode]()
    while p != nil{
        array.append(p!)
        p = p?.next
    }
    
    p = ListNode(-1)
    var i = 0
    var j = array.count - 1
    while (i <= j) {
        p?.next = array[i]
        p?.next?.next = array[j]
        array[j].next = nil
        p = p?.next?.next
        i += 1
        j -= 1
    }
    
}












