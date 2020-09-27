import UIKit

//通过数组和字典实现简单LRU
class LRUCache {

    private var maxSize = Int()
    private var indexArr = [Int]()
    private var dicInde = [Int:Int]()
    
    init(_ capacity: Int) {
        maxSize = capacity
    }
    
    func get(_ key: Int) -> Int {
        
        if(indexArr.contains(key)){
            //将最近使用的移动到前边
            indexArr = indexArr.filter{$0 != key}
            indexArr.append(key)
            return dicInde[key]!
        }
        return -1
    }
    
    func put(_ key: Int, _ value: Int) {
        
        if(indexArr.contains(key)){
            //将最近使用的移动到前边
            indexArr = indexArr.filter{$0 != key}
            indexArr.append(key)
            dicInde[key] = value
        }else{
            if(indexArr.count >= maxSize){
                indexArr.removeFirst()
                dicInde.removeValue(forKey: key)
            }
            indexArr.append(key)
            dicInde[key] = value
        }
        
    }
}

let cache = LRUCache(2);
print(cache.get(2))
cache.put(2, 6)
print(cache.get(1))
cache.put(1, 5)
cache.put(1, 2)    // 该操作会使得密钥 2 作废
print(cache.get(1))
print(cache.get(2))














