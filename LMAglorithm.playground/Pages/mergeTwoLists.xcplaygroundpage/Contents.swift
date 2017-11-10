//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

    guard let temp1 = l1 else { return l2 }
    guard let temp2 = l2 else { return l1 }
    let resultList = ListNode(0)
    var secureNode: ListNode = resultList
    var p1: ListNode? = l1
    var p2: ListNode? = l2
    while let p11 = p1, let p22 = p2 {
        if p11.val < p22.val {
            secureNode.next = p11
            secureNode = p11
            p1 = p11.next
        } else {
            secureNode.next = p22
            secureNode = p22
            p2 = p22.next
        }
    }
    if p1 != nil {
        secureNode.next = p1
    } else {
        secureNode.next = p2
    }
    return resultList.next
}