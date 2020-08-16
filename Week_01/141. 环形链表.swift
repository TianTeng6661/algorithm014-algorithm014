import UIKit

class ListNode {
    
    public var value:Int
    public var next:ListNode?
    public init(_ value : Int){
        self.value = value
        self.next = nil
    }
    
}

func hasCycle(_ head: ListNode?) -> Bool {
    
    if(head == nil || head?.next == nil){
        return false
    }
    
    var slowNode = head
    var quickNode = head?.next
    
    while (quickNode != nil) {
        if(quickNode === slowNode){
            return true
        }
        slowNode = slowNode?.next
        quickNode = quickNode?.next?.next
    }
    
    return false
    
    
}

