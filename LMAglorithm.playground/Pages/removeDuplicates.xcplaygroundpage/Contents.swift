//: [Previous](@previous)

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var result = 0
    for (ind, num) in nums.enumerated() {
        if ind == 0 || num != nums[ind - 1] {
            result += 1
            nums.append(num)
        }
    }
    nums.removeFirst(nums.count - result)
    return result
}
//var temp = [1, 1, 2]
//let a = removeDuplicates(&temp)

