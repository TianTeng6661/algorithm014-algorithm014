import UIKit

func isAnagram(_ s: String, _ t: String) -> Bool {
    
    guard (s.count == t.count) else {
        return false
    }
    
    var table = Array(repeating: 0, count: 26)
    let count = Int("a".first!.asciiValue!)

    for ss in s{
        
        table[Int(ss.asciiValue!) - count] += 1;
    }
    
    for tt in t{
        
        table[Int(tt.asciiValue!) - count] -= 1;
    }
    
    for num in table{
        if(num != 0){
            return false
        }
    }
    return true
}

isAnagram("aacc", "ccac")

/*
func isAnagram(_ s: String, _ t: String) -> Bool {

    guard (s.count == t.count) else {
        return false
    }
    
    var sArray = [Character]()
    
    for ss  in s{
        
        sArray.append(ss)
    }
    print(sArray)
    for tt in t{
        if(sArray.contains(tt)){
            sArray.removeAll(where :{$0 == tt})
            print(sArray)
        }
    }
    
    if(sArray.count > 0){
        return false
    }
    
    return true
}
*/
isAnagram("aacc", "ccac")


/*
var arrayOne = [1,2,3,0,0,0];
var arrayTwo = [2,5,6];
//var array = [1,2];

merge(&arrayOne, 3, arrayTwo, 3)

*/
