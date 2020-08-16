import UIKit

class ListNode {
    
    public var value:Int
    public var next:ListNode?
    public init(_ value : Int){
        self.value = value
        self.next = nil
    }
    
}

func isValid(_ s: String) -> Bool {
    
    //判断是不是偶数
    let conSult = s.count%2
    if conSult != 0 {
        return false
    }
    var array = [Character]()
    
    for char in s {
        switch char {
        case "(","{","[":
            array.append(char)
            
        case ")":
            if(array.popLast() != "("){
                return false
            }
            
        case "}":
        if(array.popLast() != "{"){
            return false
        }
        
        case "]":
        if(array.popLast() != "["){
            return false
        }
        
        default:
            break
        }
    }
    
    if(array.count == 0){
        return true
    }else{
        return false
    }
    
}

