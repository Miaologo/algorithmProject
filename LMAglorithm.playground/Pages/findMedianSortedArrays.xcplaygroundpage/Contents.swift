//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    
    var a = nums1[nums1.count]
    var b = nums2[0]
    
//    if totalCount % 2 == 0 {
//        if a <= b {
//            if nums1.count > nums2.count {
//                a = nums1[totalCount/2]
//                b = nums1[totalCount/2 + 1]
//            } else if nums1.count < nums2.count {
//                a = nums2[totalCount/2]
//                b = nums2[totalCount/2 + 1]
//            }
//            return Double(a + b)/2.0
//        } else {
//            
//        }
//    } else {
//        if a <= b {
//            if nums1.count > nums2.count {
//                a = nums1[totalCount/2 + 1]
//            } else {
//                a = nums2[totalCount/2 + 1]
//            }
//            return Double(a)
//        } else {
//            
//        }
//    }
    let totalCount = nums1.count + nums2.count
    if totalCount % 2 == 0 {
        return Double(findMedianForTwoArray(nums1, nums2, target: totalCount / 2) + findMedianForTwoArray(nums1, nums2, target: (totalCount / 2) + 1))/2.0
    } else {
        return Double(findMedianForTwoArray(nums1, nums2, target: totalCount/2 + 1))
    }
}

func findMedianForTwoArray(_ nums1:[Int], _ nums2: [Int], target: Int) -> Int
{
    if nums1.count == 0 {
        return nums2[target - 1]
    } else if nums2.count == 0 {
        return nums1[target - 1]
    } else if target == 1 {
        return nums1[0] < nums2[0] ? nums1[0] : nums2[0]
    }
    var index1 = target / 2
    var index2 = target - index1
    
    if index1 >= nums1.count {
        index1 = nums1.count
        index2 = target - index1
    } else if index2 >= nums2.count {
        index2 = nums2.count
        index1 = target - index2
    }
    if nums1[index1 - 1] < nums2[index2 - 1] {
        let tempNum = Array(nums1.dropFirst(index1))
        return findMedianForTwoArray(tempNum, nums2, target: target - index1)
    } else if nums1[index1 - 1] > nums2[index2 - 1] {
        let tempNums = Array(nums2.dropFirst(index2))
        return findMedianForTwoArray(nums1, tempNums, target: target - index2)
    } else {
        return nums2[index2 - 1]
    }
}

func quickFind(_ nums: [Int], target: Int) -> Int {
    
    return 0
}
//let nums1 = [5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22]
//let nums2 = [30]
let nums1 = [1, 2, 5, 6]
let nums2 = [3, 4, 5, 7]
let a = findMedianForTwoArray(nums1, nums2, target: 7)
