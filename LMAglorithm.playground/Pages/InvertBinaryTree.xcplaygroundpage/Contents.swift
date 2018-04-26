//: [Previous](@previous)

import Foundation
import TreeNode
var str = "Hello, playground"

func invertTree(_ root: TreeNode?) -> TreeNode? {
    if let temp = root {
        var left = temp.left
        temp.left = temp.right
        temp.right = left
        invertTree(temp.left)
        invertTree(temp.right)
        return temp
    } else {
        return nil
    }
}
