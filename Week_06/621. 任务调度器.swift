import UIKit


func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
    
    var kinds: [Int] = [Int](repeating: 0, count: 26)
    let a = Int(String("A").unicodeScalars.first!.value)
    for task in tasks {
        let char = Int(String(task).unicodeScalars.first!.value)
        kinds[char-a] += 1
    }
    kinds.sort()
    print(kinds)
    var time = 0
    var lastCount = 1
    for i in 1...25 {
        if kinds[25-i] == kinds[25-i+1] {
            lastCount += 1
        }else {
            break
        }
    }
    time = max(tasks.count, (kinds[25] - 1)*(n + 1) + lastCount)
    return time
        
}

let str : [Character] = ["A","A","A","B","B","B"]
print(leastInterval(str, 2))













