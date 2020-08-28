import UIKit

func letterCombinations(_ digits: String) -> [String] {
    
    guard digits.count > 0 else {
        return []
    }
    
    var dictionary = [Character:[String]]()
    dictionary["2"] = ["a","b","c"]
    dictionary["3"] = ["d","e","f"]
    dictionary["4"] = ["g","h","i"]
    dictionary["5"] = ["j","k","l"]
    dictionary["6"] = ["m","o","n"]
    dictionary["7"] = ["p","q","r","s"]
    dictionary["8"] = ["t","u","v"]
    dictionary["9"] = ["w","x","y","z"]
    
    var result = [String]()
    for num in digits{
        result = backtrack(result, dictionary[num]!)
    }
    
    return result
}

func backtrack(_ arr:[String], _ letter:[String]) -> [String]{
    
    var newArr = [String]()
    
    for l in letter{
        if(arr.count > 0){
            for s in arr {
                newArr.append(s+l)
            }
        }else{
            newArr.append(l)
            
        }
    }
    return newArr
}

letterCombinations("23")


