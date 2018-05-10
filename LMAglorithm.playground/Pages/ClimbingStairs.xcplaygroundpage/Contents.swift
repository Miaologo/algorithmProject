//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func climbStairs(_ n: Int) -> Int {
    if n == 1 {
        return 1
    }
    if n == 2 {
        return 2
    }
    return climbStairs(n-1) + climbStairs(n-2)
}

func climbStairs1(_ n: Int) -> Int {
    var t1 = 1
    var t2 = 2
    var index = 3
    while index <= n {
        let temp = t2
        t2 = t1 + t2
        t1 = temp
        index += 1
    }
    if n == 1 {
        t2 = t1
    }
    return t2
}
