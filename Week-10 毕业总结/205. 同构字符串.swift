import UIKit

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    var map = [Character:Character]()
    for (s,t) in zip(s, t){
        if let char = map[s] {
            if(char != t){
                return false
            }
        }else{
            if map.values.contains(t){
                return false
            }
        }
        map[s] = t
    }
    return true
}












