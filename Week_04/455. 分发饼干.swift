import UIKit

func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
    
    if(g.count == 0 || s.count == 0){
        return 0
    }
    
    let newG = g.sorted()
    let newS = s.sorted()
    
    var ans = 0
    var gCount = 0
    var sCount = 0
    
    while (gCount != newG.count && sCount != newS.count) {
        
        if(newS[sCount] >= newG[gCount]){
            ans += 1
            gCount += 1
        }
        sCount += 1
        
    }
    return ans
}
var iosArray = [1,2]
var newIosArray = [1,2,3]
findContentChildren(iosArray, newIosArray)

