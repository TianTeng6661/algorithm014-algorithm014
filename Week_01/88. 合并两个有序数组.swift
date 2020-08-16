import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    /*
    nums1.removeLast(n)
    nums1.append(contentsOf: nums2)
    nums1.sort()
    */
    
    var i = m - 1
    var j = n - 1
    var res = m+n-1
    
    while j>=0 {
        if(i>=0 && nums1[i] > nums2[j]){
            nums1[res] = nums1[i]
            i -= 1
        }else{
            nums1[res] = nums2[j]
            j -= 1
        }
        res -= 1
    }
    
}

var arrayOne = [1,2,3,0,0,0];
var arrayTwo = [2,5,6];
//var array = [1,2];

merge(&arrayOne, 3, arrayTwo, 3)

