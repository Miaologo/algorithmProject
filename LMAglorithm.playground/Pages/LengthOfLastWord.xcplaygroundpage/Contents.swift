//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
func lengthOfLastWord(_ s: String) -> Int {
    var length = 0
    var temp = 0
    for char in s {
        if char == " " {
            length = temp > 0 ? temp : length
            temp = 0
            continue
        }
        temp += 1
    }
    length = temp > 0 ? temp : length
    return length
}
str = "Hello World"
let a = lengthOfLastWord(str)
