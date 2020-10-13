import UIKit

func isValid(_ s: String) -> Bool {
    
    if((s.count < 2) || (s.count % 2 != 0)){
        return false
    }
    let array = Array(s)
    var queue = [Character]()
    
    for char in array {
        if(char == "(" || char == "{" || char == "["){
            queue.append(char)
            
        }else if(char == ")"){
            let newChar = queue.last
            if(newChar == "("){
                queue.removeLast()
            }else{
                return false
            }
            
        }else if(char == "}"){
            let newChar = queue.last
            if(newChar == "{"){
                queue.removeLast()
            }else{
                return false
            }
            
        }else if(char == "]"){
            let newChar = queue.last
            if(newChar == "["){
                queue.removeLast()
            }else{
                return false
            }
        }
    }
    return (queue.count == 0 ? true : false)
}















