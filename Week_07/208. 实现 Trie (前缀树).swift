import UIKit

class Trie {
    
    static let TRIE_NODE_NUMS = 26
    static let a_ASCII_VALUE = Int(Character("a").asciiValue ?? 97)
    
    class TrieNode {
        var isEnd = false
        var links = [TrieNode?](repeating:nil, count: TRIE_NODE_NUMS)
        init() {
            
        }
        
        func containsKey(_ char : Character) -> Bool {
            guard let asciiValue = char.asciiValue else {
                return false
            }
            let charAt = Int(asciiValue) - a_ASCII_VALUE
            return links[charAt] != nil
        }
        
        func get(_ char:Character) -> TrieNode? {
            guard let asciiValue = char.asciiValue else {
                return nil
            }
            let charAt = Int(asciiValue) - a_ASCII_VALUE
            return links[charAt]
        }
        
        func put(_ char:Character,_ node:TrieNode) {
            guard let asciiValue = char.asciiValue else {
                return
            }
            let charAt = Int(asciiValue) - a_ASCII_VALUE
            links[charAt] = node
        }
        
    }
    
    var root = TrieNode()

    /** Initialize your data structure here. */
    init() {

    }
    
    /** Inserts a word into the trie. */
    func insert(_ word: String) {
        
        var node = root
        for char in word {
            if !node.containsKey(char){
                node.put(char, TrieNode())
            }
            node = node.get(char)!
        }
        node.isEnd = true
    }
    
    /** Returns if the word is in the trie. */
    func search(_ word: String) -> Bool {
        
        guard let node = seachPrefix(word) else {
            return false
        }
        return node.isEnd
    }
    
    /** Returns if there is any word in the trie that starts with the given prefix. */
    func startsWith(_ prefix: String) -> Bool {
        
        guard seachPrefix(prefix) != nil else {
            return false
        }
        return true
    }
    
    func seachPrefix(_ word:String) -> TrieNode? {
        var node = root
        for char in word {
            if node.containsKey(char){
                node = node.get(char)!
            }else{
                return nil
            }
        }
        return node
    }
    
}

let trie = Trie()
trie.insert("apple")
print(trie.search("apple"))
print(trie.search("app"))
print(trie.seachPrefix("app") as Any)
trie.insert("app")
print(trie.search("app"))














