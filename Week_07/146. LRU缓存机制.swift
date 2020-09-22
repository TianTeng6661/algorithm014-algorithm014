import UIKit

class ListNode {
    var key:Int
    var val:Int
    var pre : ListNode?
    var next : ListNode?
    init(key:Int, val:Int) {
        self.key = key
        self.val = val
    }
}

class LRUCache {
    
    private var cache = [Int:ListNode]()
    private var maxSize = 0
    private var currentSize = 0
    private var head : ListNode?
    private var tail : ListNode?

    init(_ capacity: Int) {
        self.maxSize = capacity
    }
    
    func get(_ key: Int) -> Int {
        
        if let node = cache[key]{
            //将经常使用的数值放至在最前
            moveToHead(node:node)
            return node.val //返回查找到的value
        }
        return -1
    }
    
    func put(_ key: Int, _ value: Int) {
        
        if let node = cache[key]{
            node.val = value
            //移动当前存在的节点到头部
            moveToHead(node: node)
        }else{ //插入新的值在头部
            let newNode = ListNode(key: key, val: value)
            addNodeToHead(node: newNode)
            cache[key] = newNode
            currentSize += 1
            if(currentSize > maxSize){ //超出容量，则删除最后一个
                removeTail()
                currentSize -= 1
            }
        }
        
    }
    
    func removeTail() {
        if let tail = self.tail {
            cache.removeValue(forKey: tail.key)
            self.tail = tail.pre
            self.tail?.next = nil
        }
    }
    
    func moveToHead(node:ListNode) {
        if(node === self.head){
            return
        }
        //将存在的节点删除
        let pre = node.pre
        let next = node.next
        pre?.next = next
        if(next != nil){
            next?.pre = pre
        }else{
            self.tail = pre
        }
        //将存在的节点放置头部
        addNodeToHead(node: node)
    }
    
    func addNodeToHead(node:ListNode) {
        if(self.head == nil){
            self.head = node
            self.tail = node
        }else{
            //交换指针
            let temp = self.head!
            self.head = node
            self.head?.next = temp
            temp.pre = self.head
        }
        
    }
}













