import UIKit

class ListNode{
    var key: Int
    var value:Int
    var pre: ListNode?
    var next: ListNode?
    init(key:Int,value:Int) {
        self.key = key
        self.value = value
    }
}

class LRUCache {
    
    private var cache = [Int:ListNode]()
    private var maxSize = 0
    private var currentSize = 0
    private var head : ListNode?
    private var tail : ListNode?

    init(_ capacity: Int) { //容量
        self.maxSize = capacity
    }
    //获取数值
    func get(_ key: Int) -> Int {
        
        if let node = cache[key]{
            //将最近使用的数值移动到头部
            moveToHead(node: cache[key]!)
            return node.value
        }
        return -1
    }
    //设置数值
    func put(_ key: Int, _ value: Int) {
        
        if let node = cache[key]{ //之前缓存中有
            node.value = value;
            moveToHead(node: node)
        }else{ //缓存中没有
            //将数值插入到缓存
            let newNode = ListNode(key: key, value: value)
            addNode(node: newNode)
            currentSize += 1
            if(currentSize > maxSize){ //空间不够则移除最后一个
                removeNode()
                currentSize -= 1
            }
        }
    }
    
    //根据key删除数值
    func removeForKey(_ key:Int){
        if let node = cache[key] { //将缓存中的数据删除
            cache.removeValue(forKey: key)
            currentSize -= 1
            if(self.tail === node){
                removeNode()
            }else if(self.head === node){
                let temp = self.head?.next
                self.head = temp
                temp?.pre = self.head
            }else{
                let pre = node.pre
                let next = node.next
                pre?.next = next
                next?.pre = pre
            }
        }
        
    }
    
    //删除所有数据
    func removeAll() {
        if cache.count > 0 {
            cache.removeAll()
            self.head = nil
            self.tail = nil
            currentSize = 0
        }else{
            return
        }
        
    }
    
    //将节点插入到缓存
    func addNode(node:ListNode){
        cache[node.key] = node
        if(self.head == nil || self.tail == nil){ //缓存中还没有数值
            self.head = node
            self.tail = node
        }else{ //移动到头部
            let temp = self.head
            self.head = node
            self.head?.next = temp
            temp?.pre = self.head
        }
    }
    
    //删除节点
    func removeNode() {
        
        if self.tail != nil {
            cache.removeValue(forKey: self.tail!.key)
            currentSize -= 1
            let temp = self.tail?.pre
            self.tail = temp
            self.tail?.next = nil
        }
        
    }
    
    //将节点移动到头部
    func moveToHead(node:ListNode) {
        if(node === self.head){
            return
        }
        //将存在的节点删除
        let temp = node.next
        node.pre?.next = temp
        if(temp != nil){
            temp?.pre = node.pre
        }else{
            self.tail = node.pre
        }
        //将数值移动到头部
        addNode(node: node)
        
    }
    
}

let cache = LRUCache(2)
cache.put(1, 1)
cache.put(2, 2)
print(cache.get(1))       // 返回  1
cache.put(3, 3)    // 该操作会使得关键字 2 作废
print(cache.get(2))       // 返回 -1 (未找到)
cache.put(4, 4);    // 该操作会使得关键字 1 作废
print(cache.get(1))       // 返回 -1 (未找到)
cache.removeForKey(3) //删除3
print(cache.get(3))       // 返回  3
print(cache.get(4))     // 返回  4
//cache.removeForKey(4)
//print(cache.get(4))

cache.removeAll()
print(cache.get(4))













