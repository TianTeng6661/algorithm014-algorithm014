import UIKit

func validMountainArray(_ A: [Int]) -> Bool {
    if(A.count < 3){
        return false
    }
    var head = 0
    var tail = A.count - 1
    
    while (head+1 < A.count && A[head] < A[head + 1]) {
        head += 1
    }
    while (tail > 0  && A[tail - 1] > A[tail]) {
        tail -= 1
    }
    
    if(head > 0 && tail < A.count - 1 && head == tail){
        return true
    }else{
        return false
    }
    
}










