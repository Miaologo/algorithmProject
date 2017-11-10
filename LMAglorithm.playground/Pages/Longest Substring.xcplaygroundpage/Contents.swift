//: [Previous](@previous)

import Foundation


// Given "abcabcbb", the answer is "abc", which the length is 3.

// Given "bbbbb", the answer is "b", with the length of 1.

// Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

func lengthOfLongestSubstring(_ s: String) -> Int {
    var subSet = Set<Character>()
    var maxCount = 0
    var tempCount = 0
    for charac in s.characters {
        if subSet.contains(charac) {
            subSet.removeAll()
            maxCount = maxCount > tempCount ? maxCount : tempCount
            tempCount = 0
        }
        tempCount += 1
        subSet.insert(charac)
    }
    return maxCount
}


func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    func findA(_ nums: [Int], num: Int) -> Int {
        var numList = nums
        if let lastNum = numList.last, lastNum < num {
            return lastNum
        }
        while <#condition#> {
            <#code#>
        }
        return 0
    }
    
    let allNums = nums1 + nums2
    
    
    return 0.0
}

