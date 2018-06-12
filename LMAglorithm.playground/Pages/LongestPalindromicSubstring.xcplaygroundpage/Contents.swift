//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func longestPalindrome(_ s: String) -> String {
    var result = ""
    if s.count == 0 {
        return result
    }
    var dic = [Character : Array<Int>]()
    for (index, chara) in s.enumerated() {
        var arr = Array<Int>()
        if let tempArr = dic[chara] {
            arr = tempArr
        }
        arr.append(index)
        dic[chara] = arr
        print("\(index) \(chara) \n")
    }
    print("\(dic)")
    return result
}
func manacher(_ str: String) -> String {
    if str.count == 0 {
        return ""
    }
    var tempStr = "*"
    for chara in str {
        tempStr.append(chara)
        tempStr.append("*")
    }
    var resultMid = 0
    var mid = 0
    var maxRight = 0
    var maxLength = 0
    var resultArr: Array<Int> = Array(repeating: 0, count: tempStr.count)
    for (index, _) in tempStr.enumerated() {
        if index < maxRight {
            resultArr[index] = min(resultArr[2*mid - index], maxRight - index)
        } else {
            resultArr[index] = 1
        }
        while index - resultArr[index] >= 0 && index + resultArr[index] < tempStr.count {
            if tempStr[tempStr.index(tempStr.startIndex, offsetBy: index - resultArr[index])] == tempStr[tempStr.index(tempStr.startIndex, offsetBy: index + resultArr[index])] {
                resultArr[index] += 1
            }
        }
        if resultArr[index] + index - 1 > maxRight {
            maxRight = resultArr[index] + index - 1;
            mid = index
        }
        if maxRight < resultArr[index] {
            maxRight = resultArr[index]
        }
    }
    for (index, len) in resultArr.enumerated() {
        if maxLength < len {
            maxLength = len
            resultMid = index
        }
    }
    resultMid = resultMid - resultMid / 2
//    str[str.index(str.startIndex, offsetBy: resultMid-maxLength-1)...str.index(str.startIndex, offsetBy: resultMid+maxLength-1)]
    let fistIndex = str.index(str.startIndex, offsetBy: resultMid-maxLength-1)
    let endIndex = str.index(str.startIndex, offsetBy: resultMid+maxLength-1)
    let result = str[fistIndex...endIndex] as? String
    return result!
}

//longestPalindrome("ababd")

