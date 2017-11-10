//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// ----------- Two Sum  -------------
func twoSum(_ nums:[Int], _ target: Int) -> [Int] {
    var dic: Dictionary = [Int: Int]()
    for (index, value) in nums.enumerated() {
        if let tempIndex = dic[target - value], tempIndex < nums.count, nums[tempIndex] + value == target {
            return [index, tempIndex]
        }
        dic[value] = index
    }
    return [0, 0]
}

let example = [2, 3, 7, 15]
let result = twoSum(example, 9)




