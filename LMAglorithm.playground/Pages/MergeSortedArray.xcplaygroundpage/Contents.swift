//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var index = m + n - 1
    var index1 = m - 1
    for val in nums2.reversed() {
        if index1 < 0 || val >= nums1[index1] {
            nums1[index] = val
            index -= 1
        } else {
            while index1 >= 0 {
                if nums1[index1] <= val {
                    break
                }
                nums1[index] = nums1[index1]
                index -= 1
                index1 -= 1
            }
            nums1[index] = val
            index -= 1
        }
    }
//    var index2 = n - 1
//    while index >= 0 {
//        if nums1[index1] < nums2[index2] {
//            while index2 >= 0 {
//                if nums2[index2] <= nums1[index1] {
//                    break;
//                }
//                nums1[index] = nums2[index2]
//                index2 -= 1
//                index -= 1
//            }
//        } else {
//            while index1 >= 0 {
//                if nums2[index2] > nums1[index1] {
//                    break;
//                }
//                nums1[index] = nums1[index1]
//                index1 -= 1
//                index -= 1
//            }
//        }
//    }
}
