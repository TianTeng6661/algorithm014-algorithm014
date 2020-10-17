import UIKit

struct Option {
    var leftBoundary: Int
    var rightBoundary: Int
    var height: Int
    func area() -> Int {
        return (rightBoundary - leftBoundary + 1) * height
    }
}

func maximalRectangle(_ matrix: [[Character]]) -> Int {
    guard matrix.count > 0 else { return 0 }
    var maxArea = 0
    let m = matrix.count, n = matrix[0].count
    var options = Array<Option>(repeating: .init(leftBoundary: 0, rightBoundary: n, height: 0), count: matrix[0].count)
    
    for i in 0..<m {
        var leftBoundary = 0
        for j in 0..<n {
            if matrix[i][j] == "1" {
                options[j].height += 1
                options[j].leftBoundary = max(options[j].leftBoundary, leftBoundary)
            } else {
                options[j].leftBoundary = 0
                options[j].height = 0
                leftBoundary = j + 1
            }
        }
        var rightBoundary = n - 1
        for j in (0..<n).reversed() {
            if matrix[i][j] == "1" {
                options[j].rightBoundary = min(options[j].rightBoundary, rightBoundary)
            } else {
                rightBoundary = j - 1
                options[j].rightBoundary = n - 1
            }
            maxArea = max(maxArea, options[j].area())
        }
    }
    
    return maxArea
}

let arr:[[Character]] = [["0","1"]]
print(maximalRectangle(arr))














