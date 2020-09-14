import UIKit

func numDecodings(_ s: String) -> Int {
   if (s.isEmpty || s.first == "0"){
        return 0
    }
    var dp = [Int](repeating: 0, count: s.count + 1)
    dp[0] = 1
    dp[1] = 1
    let sArray = Array(s)
    for i in dp.indices[2...] {
        
        print(i)
        
        let pre = sArray[i - 2]
        let ele = sArray[i - 1]
        
        if (pre == "0"){
            if(ele == "0"){
                return 0
            }
            // 无论将s[i-1]和s[i]合并一个数看，还是分开看，其实都等于dp[i-1]
            dp[i] = dp[i - 1]
        }else{
            // 如果s[i-2]合并s[i-1]可以一起看的情况，这种情况数量 = dp[i-2]
            if(("10" ... "26").contains(String([pre,ele]))){
                dp[i] += dp[i - 2]
            }
            // 如果s[i-1]可以单独看，这种情况数量 = dp[i-1]
            if (ele != "0"){
                dp[i] += dp[i - 1]
            }
            
        }
    }
    return dp.last!
}

let str = "1"
print(numDecodings(str))













