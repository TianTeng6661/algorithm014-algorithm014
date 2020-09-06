import UIKit

func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
 
    if(beginWord == endWord || !wordList.contains(endWord)){
        return 0
    }
    
    let dict = Set(wordList)
    var beginSet = Set<String>()
    var endSet = Set<String>()
    var visitedSet = Set<String>()
    var length = 1
    var found = false
    
    beginSet.insert(beginWord)
    endSet.insert(endWord)
    
    while !found && !beginSet.isEmpty && !endSet.isEmpty {
        var nextSet = Set<String>()
        if beginSet.count > endSet.count{
            swap(&beginSet, &endSet)
        }
        found = helper(beginSet: beginSet, endSet: endSet, dict: dict, visitedSet: &visitedSet, resSet: &nextSet)
        beginSet = nextSet
        length += 1
    }
    return found ? length : 0
}

func helper(beginSet:Set<String>, endSet:Set<String>,dict:Set<String>,visitedSet:inout Set<String>,resSet:inout Set<String>) -> Bool{
    let alphaArray = Array("abcdefghijklmnopqrstuvwxyz")
    for word in beginSet {
        for  i in 0 ..< word.count{
            var chars = Array(word)
            for j in 0 ..< alphaArray.count{
                chars[i] = alphaArray[j]
                let str = String(chars)
                if dict.contains(str){
                    if endSet.contains(str){
                        return true
                    }
                    if !visitedSet.contains(str){
                        resSet.insert(str)
                        visitedSet.insert(str)
                    }
                }
            }
        }
    }
    return false
}

var iosArr = [1,1,1,1,1]
ladderLength("hit", "cog", ["hot","dot","dog","lot","log","cog"])

