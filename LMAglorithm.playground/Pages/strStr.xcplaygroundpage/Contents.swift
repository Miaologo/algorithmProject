//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//Implement strStr().

//Returns the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

func strStr(_ haystack: String, _ needle: String) -> Int {
    if haystack == needle || needle == "" {
        return 0
    }
    if haystack.characters.count == 0 || haystack.characters.count < needle.characters.count {
        return -1
    }
    
    if let positon = haystack.range(of: needle) {
        return haystack.distance(from: haystack.startIndex, to: positon.lowerBound)
    }
    return -1
}


let a = strStr("", "")