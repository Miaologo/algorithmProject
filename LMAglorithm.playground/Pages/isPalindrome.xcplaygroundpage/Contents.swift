//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func isPalindrome(_ x: Int) -> Bool {
    var tempNum = 0
    var res = x
    while res != 0 {
        tempNum = tempNum * 10 + res % 10
        res = res / 10
    }
    if tempNum == x && x >= 0 {
        return true
    }
    return false
}