import UIKit

func lemonadeChange(_ bills: [Int]) -> Bool {
    
    guard bills.count != 0 else{
        return true
    }
    if(bills[0] > 5){
        return false
    }
    var five = 0
    var ten = 0
    for count in bills{
        if(count == 5){
            five += 1
        }else if(count == 10){
            if(five == 0){
                return false
            }
            five -= 1
            ten += 1
        }else{ //20元的
            if(five > 0 && ten > 0){
                five -= 1
                ten -= 1
            }else if(five >= 3){
                five -= 3
            }else{
                return false
            }
        }
    }
    
    return true
    
}
var iosArray = [5,5,10,10,20]
lemonadeChange(iosArray)

