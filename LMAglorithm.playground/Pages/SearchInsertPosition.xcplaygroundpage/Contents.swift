//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var index = 0
    for num in nums {
        if num == target || num > target {
            return index
        }
        index += 1
    }
    return index
}
