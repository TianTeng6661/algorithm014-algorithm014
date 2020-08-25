import UIKit

func isValid(_ s: String) -> Bool {
    
    if(s.count == 0){
        return true
    }
    if(s.count%2 != 0){
        return false
    }
    var resultArray = [Character]()
    for char in s{
        if(char == "(" || char == "[" || char == "{"){
            resultArray.append(char)
        }else if(char == ")"){
            
            if(resultArray.last != "("){
                return false
            }else{
                resultArray.removeLast()
            }
        }else if(char == "}"){
            if(resultArray.last != "{"){
                return false
            }else{
                resultArray.removeLast()
            }
            
        }else if(char == "]"){
            if(resultArray.last != "["){
                return false
            }else{
                resultArray.removeLast()
            }
        }
    }
    if(resultArray.count == 0){
        return true
    }
    return false
    
    
}

var s = "()"
isValid(s)


