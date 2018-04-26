//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if let l = p, let r = q {
        return l.val == r.val && isSameTree(l.left, r.left) && isSameTree(l.right, r.right)
    }
    if p == nil && q == nil {
        return true
    }
    return false
}
