//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
func maxSubArray(_ nums: [Int]) -> Int {
    var sum = Int.min
    var tempSum = 0
    for num in nums {
        tempSum = max(num, tempSum + num)
        if sum < tempSum {
            sum = tempSum
        }
    }
    return sum
}

let s = [-2]
let aa = maxSubArray(s)
