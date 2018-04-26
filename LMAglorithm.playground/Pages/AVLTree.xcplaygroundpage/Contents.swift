//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func llRotate(_ rootNode: TreeNode) -> TreeNode {
    
    
    return TreeNode(0)
}

func fab(n: Int, i: Int, j: Int) -> Int {
    if n < 2 {
        return j
    }
    return fab(n: n-1, i: j, j: i+j)
}

var num = fab(n: 5, i: 1, j: 1)
