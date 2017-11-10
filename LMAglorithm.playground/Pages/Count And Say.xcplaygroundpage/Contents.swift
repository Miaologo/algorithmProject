//: [Previous](@previous)

import Foundation

//  --------------- Count and Say --------------

// 1   1
// 2   11      1个1
// 3   21      2个1
// 4   1211    1个2 1个1
// 5   111221  1个1 1个2 2个1

func countAndSay(_ n: Int) -> String {
    if n == 1 {
        return "1"
    }
    let tempStr = countAndSay(n - 1)
    var count = 0
    var resultStr = ""
    var sentry = tempStr[tempStr.index(tempStr.startIndex, offsetBy: 0)]
    for charac in tempStr.characters {
        if sentry != charac {
            resultStr.append("\(count)")
            resultStr.append(sentry)
            count = 1
            sentry = charac
        } else {
            count += 1
        }
    }
    if count > 0 {
        resultStr.append("\(count)")
        resultStr.append(sentry)
    }
    return resultStr
}

