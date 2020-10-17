import UIKit

func toLowerCase(_ str: String) -> String {
    var array = Array(str)
    for i in 0 ..< array.count {
        if(array[i].isUppercase){
            array[i] = Character(array[i].lowercased())
        }
    }
    return String(array)
}
print(toLowerCase("HelloW"))














