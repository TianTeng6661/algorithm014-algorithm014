import UIKit

func numJewelsInStones(_ J: String, _ S: String) -> Int {
    
    if(J.count == 0 || S.count == 0){
        return 0
    }
    let jarray = J.map{$0}
    var result = 0
    for (_, sss) in S.enumerated(){
        if(jarray.contains(sss)){
            result += 1
        }
    }
    
    return result
}

let jjj = "aA"
let ssss = "aAAbbbb"
numJewelsInStones(jjj, ssss)



