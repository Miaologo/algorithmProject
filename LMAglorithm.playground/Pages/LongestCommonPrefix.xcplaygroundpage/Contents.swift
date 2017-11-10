//: [Previous](@previous)

import Foundation
import UIKit

var str = "Hello, playground"

//: [Next](@next)

func longestCommonPrefix(_ strs: [String]) -> String {
    func prefixForTwoString(_ str1: String, str2: String) -> String {
        var resultStr = ""
        let length = str1.characters.count > str2.characters.count ? str2.characters.count : str1.characters.count
        if length == 0 {
            return resultStr
        }
        let index = str1.index(str1.startIndex, offsetBy: length)
        let str = str1[..<index]
        for character in str {
            if str1.index(of: character) == str2.index(of: character) {
                resultStr.append(character)
            } else {
                break
            }
        }
        return resultStr
    }
    var resultStr = strs.first ?? ""
    guard strs.count > 1 else {
        return strs.last ?? ""
    }
    for (index, str) in strs[1..<strs.count].enumerated() {
        resultStr = prefixForTwoString(resultStr, str2: str)
        if resultStr == "" {
            break
        }
    }
    return resultStr
}

let a = longestCommonPrefix(["abc", "abd"])
