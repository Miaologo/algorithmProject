//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func plusOne(_ digits: [Int]) -> [Int] {
    var flag = 1
    var result = [Int]()
    for val in digits.reversed() {
        var temp = val
        temp += flag
        if temp == 10 {
            temp = 0
            flag = 1
        } else {
            flag = 0
        }
        result.append(temp)
    }
    if flag == 1 {
        result.append(flag)
    }
    
    return result.reversed()
}
