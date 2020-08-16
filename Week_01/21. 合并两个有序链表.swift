import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  
    guard let newL1 = l1 else{
        return l2
    }
    guard let newL2 = l2 else{
        return l1
    }
    
    var node:ListNode
    if(newL1.val < newL2.val){
        node = ListNode.init(newL1.val, mergeTwoLists(newL1.next, newL2))
    }else{
        node = ListNode.init(newL2.val, mergeTwoLists(newL2.next, newL1))
    }
    return node
    
}

//var array = [1,2,3];
//var array = [1,2,3,4,5,6,7];
//var array = [1,2];
//rotate(&array, 2)

