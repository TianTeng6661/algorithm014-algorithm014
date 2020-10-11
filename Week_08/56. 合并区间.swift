import UIKit

func merge(_ intervals: [[Int]]) -> [[Int]] {
    if (intervals.count <= 1){
        return intervals
    }
    var list = intervals
    quickSort(&list, start: 0, end: (intervals.count - 1))
    
    var i = 1
    while i < list.count {
        let last = list[i - 1]
        if(list[i].last! < last.last!){
            list.remove(at: i)
        }else if(list[i].first! <= last.last!){ //交错的，合并
            list[i - 1] = [last.first!,list[i].last!]
            list.remove(at: i)
        }else{
            i += 1
        }
    }
    return list
}

func quickSort(_ list : inout [[Int]], start : Int , end : Int) {
    var i = start
    var j = end
    if (i < j) {
        let temp = list[i]
        while (i != j) {
            while (i < j && list[j].first! >= temp.first!) {
                j -= 1
            }
            list[i] = list[j]
            while (i < j && list[i].first! <= temp.first!) {
                i += 1
            }
            list[j] = list[i]
        }
        list[i] = temp
        quickSort(&list, start: start, end: (j - 1))
        quickSort(&list, start: (j + 1), end: end)
    }
}

let arr = [[1,3],[2,6],[8,10],[15,18]]
print(merge(arr))















