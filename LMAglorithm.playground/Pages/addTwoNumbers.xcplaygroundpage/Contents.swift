//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    var nodeList1 = l1
    var nodeList2 = l2
    if nodeList1 == nil && nodeList2 == nil {
        return nil
    }
    let resultNode = ListNode(0)
    var carryFlag = 0
    if let tempL1 = nodeList1 {
        resultNode.val += tempL1.val
        nodeList1 = tempL1.next
        if let tempL2 = nodeList2 {
            resultNode.val += tempL2.val
            nodeList2 = tempL2.next
        }
    }
    if resultNode.val >= 10 {
        resultNode.val = resultNode.val - 10
        carryFlag = 1
    }
    var firstNode = resultNode
    
    while(nodeList1 != nil) {
        if let tempNode1 = nodeList1 {
            let newNode = ListNode(tempNode1.val + carryFlag)
            nodeList1 = tempNode1.next
            if let temNode2 = nodeList2 {
                newNode.val += temNode2.val
                nodeList2 = temNode2.next
            }
            carryFlag = 0
            if newNode.val >= 10 {
                newNode.val = newNode.val - 10
                carryFlag = 1
            }
            firstNode.next = newNode
            firstNode = newNode
        }
    }
    while(nodeList2 != nil) {
        if let tempNode2 = nodeList2 {
            let newNode = ListNode(tempNode2.val + carryFlag)
            carryFlag = 0
            if newNode.val >= 10 {
                newNode.val = newNode.val - 10
                carryFlag = 1
            }
            nodeList2 = tempNode2.next
            firstNode.next = newNode
            firstNode = newNode
        }
    }
    if carryFlag > 0 {
        let newNode = ListNode(carryFlag)
        carryFlag = 0
        firstNode.next = newNode
    }
    return resultNode
}

func addTwoNumbers_new(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let resultNode = ListNode(0)
    var nodeList1 = l1
    var nodeList2 = l2
    var currNode = resultNode
    var carryFlag = 0
    while nodeList1 != nil || nodeList2 != nil {
        var x = 0
        var y = 0
        if let tempNode1 = nodeList1 {
            x = tempNode1.val
            nodeList1 = tempNode1.next
        }
        if let tempNode2 = nodeList2 {
            y = tempNode2.val
            nodeList2 = tempNode2.next
        }
        let sum = x + y + carryFlag
        let newNode = ListNode(sum % 10)
        carryFlag = sum / 10
        currNode.next = newNode
        currNode = newNode
    }
    if carryFlag > 0 {
        currNode.next = ListNode(carryFlag)
    }
    return resultNode.next
}