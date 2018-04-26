//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func myAtoi(_ str: String) -> Int {
    var result: Int = 0
    var flag = 1
    var index = 0
    for chara in str {
        index += 1
        if chara == " " {
            continue
        } else if chara == "-" {
            flag = -1
            break
        } else if chara == "+" {
            break
        } else {
            index -= 1
            break
        }
    }
    let startIndex = str.index(str.startIndex, offsetBy: index)
    let subStr = str.suffix(from: startIndex)
    if subStr.count == 0 {
        return result
    }
    let numStr = "0123456789"
    for chara in subStr {
        if numStr.contains(chara) {
            let ind: Int = numStr.index(of: chara)?.encodedOffset ?? 0
            let jud = result * flag
            if ((flag > 0)&&(jud > (Int.max / 10) || (Int.max - jud * 10) < ind)) {
                return Int.max
            } else if ((flag < 0)&&(jud < Int.min/10 || (10 * jud) < (Int.min + ind))) {
                return Int.min
            }
            result = result * 10 + ind
        } else {
            break
        }
    }
    return result * flag
}

func may(_ str: String) -> String {
    return str
}

var ss = "2147483648"//"-9223372036854775809"
let aaa = Int32.max
let s = myAtoi(ss)
let aa = may(ss)


