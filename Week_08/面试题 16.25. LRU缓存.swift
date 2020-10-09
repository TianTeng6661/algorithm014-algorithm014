import UIKit

public class ListNode {
    var key:Int
    var value:Int
    var pre:ListNode?
    var next:ListNode?
    init(key:Int,value:Int) {
        self.key = key
        self.value = value
    }
}

class LRUCache {
    
    var maxCount = 0
    var currentCount = 0
    var headNode:ListNode?
    var tailNode:ListNode?
    var cache = [Int:ListNode]()

    init(_ capacity: Int) {
        maxCount = capacity
    }
    
    func get(_ key: Int) -> Int {
        
        if let head = cache[key] {
            //将当前key的值放置在第一位
            moveToHead(key)
            return head.value
        }
        return -1
    }
    
    func put(_ key: Int, _ value: Int) {
        
        if let head = cache[key] { //已经存在
            head.value = value
            moveToHead(key)
        }else{
            if(currentCount >= maxCount){
                currentCount -= 1
                removeTailHead()
            }
            //添加新的节点
            addNode(key, value)
            currentCount += 1
        }

    }
    func addNode(_ key :Int,_ value:Int) {
        let newNode = ListNode.init(key: key, value: value)
        cache[key] = newNode
        if(self.headNode == nil || self.tailNode == nil){
            self.headNode = newNode
            self.tailNode = newNode
        }else{
            moveToHead(key)
        }
    }
    //删除最后一个节点
    func removeTailHead(){
        cache.removeValue(forKey: self.tailNode!.key)
        let node = self.tailNode?.pre
        self.tailNode = node
        self.tailNode?.next = nil
        
    }
    //将节点移动到头部
    func moveToHead(_ key: Int){
        let node = cache[key]
        if(node === self.headNode){
            return
        }else if(node === self.tailNode){
            self.headNode?.pre = node
            node?.next = self.headNode
            self.headNode = node
            self.tailNode = self.tailNode?.pre
            
        }else{
            let pre = node?.pre
            let next = node?.next
            pre?.next = next
            next?.pre = pre
            self.headNode?.pre = node
            node?.next = self.headNode
            self.headNode = node
        }
        
    }
}
















