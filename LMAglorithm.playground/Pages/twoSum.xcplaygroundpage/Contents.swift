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


func twoSum2(_ numbers: [Int], _ target: Int) -> [Int] {
    
    var index1 = 0
    var index2 = numbers.count - 1
    while index1 < index2 {
        let result = numbers[index1] + numbers[index2]
        if result == target {
            break
        } else if result > target {
            index2 -= 1
        } else if result < target {
            index1 += 1
        }
    }
    return [index1 + 1, index2 + 1]
}

