import UIKit

func getLeastNumbers(_ arr: [Int], _ k: Int) -> [Int] {

    guard arr.count > 1 else{
        return arr
    }
    var newArray:[Int] = arr
    newArray.sort()
    let myArray:[Int] = Array(newArray.prefix(k))
    return myArray
}

var array = [4,5,6,7,8,0]
getLeastNumbers(array, 2)


