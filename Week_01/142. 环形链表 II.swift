import UIKit

class ListNode {
    
    public var value:Int
    public var next:ListNode?
    public init(_ value : Int){
        self.value = value
        self.next = nil
    }
    
}

func detectCycle(_ head: ListNode?) -> ListNode? {
    
    if(head == nil || head?.next == nil){
        return nil
    }
    
    var slowNode = head
    var quickNode = head
    
    while quickNode != nil {
        
        slowNode = slowNode?.next
        quickNode = quickNode?.next?.next
        
        if(slowNode === quickNode){
            slowNode = head
            
            while slowNode !== quickNode {
                slowNode = slowNode?.next
                quickNode = quickNode?.next
            }
            
            return slowNode
        }
    }
    return nil
    
}

