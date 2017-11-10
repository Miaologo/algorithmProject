import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

extension ListNode {
    public func consolePrint() {
        printList(self)
    }
}

public func printList(_ node: ListNode?) {
    if let node = node {
        print(node.val, terminator: " ")
        printList(node.next)
    } else {
        print()
    }
}

public func buildList(_ arr: [Int]) -> ListNode? {
    let node = ListNode(-1)
    _ = arr.reduce(node) { (prev: ListNode?, val: Int) -> ListNode? in
        prev?.next = ListNode(val)
        return prev?.next
    }
    return node.next
}
