//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil {
        return head
    }
    var fisrtNode = head
    var secodeNode = head?.next
    while secodeNode != nil {
        if fisrtNode?.val == secodeNode?.val {
            while secodeNode != nil && secodeNode?.val == secodeNode?.next?.val {
                secodeNode = secodeNode?.next
            }
            secodeNode = secodeNode?.next
            fisrtNode?.next = secodeNode
        } else {
            fisrtNode = secodeNode
            secodeNode = secodeNode?.next
        }
    }
    return head
}
