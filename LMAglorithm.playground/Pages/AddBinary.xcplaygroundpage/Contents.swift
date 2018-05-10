//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
func addBinary(_ a: String, _ b: String) -> String {
    var flag = 0
    var str = a.count > b.count ? a : b
    var a1 = a
    var b1 = b
    var result = ""
    while str.last != nil {
        var sum = flag
        print(sum)
        if let temp = a1.last {
            sum += Int(String(temp)) ?? 0
            a1.removeLast()
        }
        if let temp1 = b1.last {
            sum += Int(String(temp1)) ?? 0
            b1.removeLast()
        }
        str.removeLast()
        flag = 0
        if sum > 1 {
            flag = 1
            sum -= 2
        }
        result.append("\(sum)")
    }
    if flag == 1 {
        result.append("\(flag)")
    }
    return String(result.reversed())
}

let a = "11"
let b = "1"
let c = addBinary(a, b)
